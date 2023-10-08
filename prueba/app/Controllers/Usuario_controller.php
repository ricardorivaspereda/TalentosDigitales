<?php
namespace App\Controllers;
use App\Models\usuario_model;
use CodeIgniter\Controller;

class Usuario_controller extends Controller{
    public function construct(){
        helper(['form', 'url']);
    }

    public function create(){
        $dato['titulo']= 'registro';
        echo view('front/head_view',$dato);
        echo view('front/navbar_view');
        echo view('back/usuario/registro');
        echo view('front/footer_view');
    }
    public function formValidation(){
        $input = $this->validate([
            'nombre' => 'required|min_length[3]',
            'apellido' => 'required|min_length[3]|max_length[25]',
            'usuario' => 'required|min_length[3]|is_unique[usuarios.usuario,id,{id}]', // Verifica que el usuario sea único (excepto para el registro actual)
            'email' => 'required|min_length[4]|max_length[100]|valid_email|is_unique[usuarios.email,id,{id}]', // Verifica que el email sea único (excepto para el registro actual)
            'pass' => 'required|min_length[3]|max_length[10]'
        ]);
    
        $formModel = new usuario_model();
    
        if (!$input) {
            $data['titulo'] = 'registro';
            echo view('front/head_view', $data);
            echo view('front/navbar_view');
            echo view('back/usuario/registro', ['validation' => $this->validator]);
            echo view('front/footer_view');
        } else {
            $formModel->save([
                'nombre' => $this->request->getVar('nombre'),
                'apellido' => $this->request->getVar('apellido'),
                'usuario' => $this->request->getVar('usuario'),
                'email' => $this->request->getVar('email'),
                'pass' => password_hash($this->request->getVar('pass'), PASSWORD_DEFAULT),
            ]);
    
            session()->setFlashdata('success', 'Usuario registrado con éxito');
            return redirect()->to(base_url('/registro'));
        }
    }
}
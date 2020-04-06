package br.com.casadocodigo.loja.models;

import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Calendar;
import java.util.List;

@Entity
public class Produto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
    private String titulo;
    private String descricao;
    private int paginas;
    
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Calendar dataLancamento;
    
    @ElementCollection
    private List<Preco> precos;
    
    private String sumarioPath;
    

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getPaginas() {
        return paginas;
    }

    public void setPaginas(int paginas) {
        this.paginas = paginas;
    }

    public List<Preco> getPrecos() {
		return precos;
	}

	public void setPrecos(List<Preco> precos) {
		this.precos = precos;
	}

	public Calendar getDataLancamento() {
		return dataLancamento;
	}

	public void setDataLancamento(Calendar dataLancamento) {
		this.dataLancamento = dataLancamento;
	}

	@Override
    public String toString() {
        return "Produto{" +
                "titulo='" + titulo + '\'' +
                ", descricao='" + descricao + '\'' +
                ", paginas=" + paginas +
                '}';
    }

	public String getSumarioPath() {
		return sumarioPath;
	}

	public void setSumarioPath(String sumarioPath) {
		this.sumarioPath = sumarioPath;
	}
}

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;


public class Principal_Test {
	
	Principal principal;
	@Before
	public void setUp() throws Exception {
		principal = new Principal();
	}

	@Test
	public void test1600() throws Exception {
		assertTrue(principal.eh_bissexto(1600));
	}
	
	@Test
	public void test1732() throws Exception {
		assertTrue(principal.eh_bissexto(1732));
	}
	
	@Test
	public void test1601() throws Exception {
		assertFalse(principal.eh_bissexto(1601));
	}
	
	@Test
	public void teste1604() throws Exception{
		assertTrue(principal.eh_bissexto(1604));	
	}
	
	@Test
	public void teste1500() throws Exception{
		assertFalse(principal.eh_bissexto(1500));	
	}
	
	@Test
	public void teste1700() throws Exception{
		assertFalse(principal.eh_bissexto(1700));	
	}
}

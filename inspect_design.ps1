$c = [System.IO.File]::ReadAllText("C:\Users\Aluno\Documents\GitHub\Portifolio-pessoal\index.html", [System.Text.Encoding]::UTF8)

# Check hero content
$posHero = $c.IndexOf('id="hero"')
Write-Output "=== HERO SECTION ==="
Write-Output $c.Substring($posHero, [Math]::Min(1200, $c.Length - $posHero))

Write-Output "=== NAV ==="
$posNav = $c.IndexOf('<nav')
if ($posNav -ge 0) {
    Write-Output $c.Substring($posNav, [Math]::Min(800, $c.Length - $posNav))
}

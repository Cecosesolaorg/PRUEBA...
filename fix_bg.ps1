$path = 'c:\Users\SISTEMA\Desktop\PROYECTOS EN HTML\Antigravity\style.css'
$content = Get-Content $path
$newContent = @()

# Lines 1 to 31
for ($i = 0; $i -lt 31; $i++) {
    $newContent += $content[$i]
}

# New app-bg rule (Lines 32 to 39 replaced)
$newContent += ".app-bg {"
$newContent += "    background-image: linear-gradient(rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0.75)), url('https://images.unsplash.com/photo-1555939594-58d7cb561ad1?q=80&w=1974&auto=format&fit=crop');"
$newContent += "    background-size: cover;"
$newContent += "    background-position: center;"
$newContent += "    background-attachment: fixed;"
$newContent += "    background-repeat: no-repeat;"
$newContent += "    transition: background 1s ease-in-out;"
$newContent += "}"

# Remaining lines (starting from old line 40, which is index 39)
# Wait, let's verify where the next rule starts.
# view_file showed:
# 39: }
# 40: 
# 41: /* Estilo para el elemento de producto seleccionado */
for ($i = 39; $i -lt $content.Length; $i++) {
    $newContent += $content[$i]
}

$newContent | Set-Content $path


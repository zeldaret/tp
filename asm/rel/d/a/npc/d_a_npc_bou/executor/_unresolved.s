lbl_8096CEF8:
/* 8096CEF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8096CEFC  7C 08 02 A6 */	mflr r0
/* 8096CF00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8096CF04  4B 8F 61 8C */	b ModuleUnresolved
/* 8096CF08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096CF0C  7C 08 03 A6 */	mtlr r0
/* 8096CF10  38 21 00 10 */	addi r1, r1, 0x10
/* 8096CF14  4E 80 00 20 */	blr 

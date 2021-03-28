lbl_80A92B80:
/* 80A92B80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A92B84  7C 08 02 A6 */	mflr r0
/* 80A92B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A92B8C  3C 60 80 A9 */	lis r3, data_80A92C20@ha
/* 80A92B90  38 63 2C 20 */	addi r3, r3, data_80A92C20@l
/* 80A92B94  4B 7D 05 B8 */	b ModuleConstructorsX
/* 80A92B98  4B 7D 04 F0 */	b ModuleProlog
/* 80A92B9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A92BA0  7C 08 03 A6 */	mtlr r0
/* 80A92BA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A92BA8  4E 80 00 20 */	blr 

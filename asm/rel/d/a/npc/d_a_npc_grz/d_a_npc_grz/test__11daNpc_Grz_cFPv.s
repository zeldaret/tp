lbl_809ECF88:
/* 809ECF88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809ECF8C  7C 08 02 A6 */	mflr r0
/* 809ECF90  90 01 00 14 */	stw r0, 0x14(r1)
/* 809ECF94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809ECF98  7C 7F 1B 78 */	mr r31, r3
/* 809ECF9C  A0 03 1A 7A */	lhz r0, 0x1a7a(r3)
/* 809ECFA0  2C 00 00 02 */	cmpwi r0, 2
/* 809ECFA4  41 82 00 38 */	beq lbl_809ECFDC
/* 809ECFA8  40 80 00 AC */	bge lbl_809ED054
/* 809ECFAC  2C 00 00 00 */	cmpwi r0, 0
/* 809ECFB0  41 82 00 0C */	beq lbl_809ECFBC
/* 809ECFB4  48 00 00 A0 */	b lbl_809ED054
/* 809ECFB8  48 00 00 9C */	b lbl_809ED054
lbl_809ECFBC:
/* 809ECFBC  3C 60 80 9F */	lis r3, lit_4360@ha
/* 809ECFC0  C0 03 F2 9C */	lfs f0, lit_4360@l(r3)
/* 809ECFC4  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809ECFC8  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809ECFCC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809ECFD0  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809ECFD4  38 00 00 02 */	li r0, 2
/* 809ECFD8  B0 1F 1A 7A */	sth r0, 0x1a7a(r31)
lbl_809ECFDC:
/* 809ECFDC  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha
/* 809ECFE0  38 A3 F1 F4 */	addi r5, r3, m__17daNpc_Grz_Param_c@l
/* 809ECFE4  A8 85 00 64 */	lha r4, 0x64(r5)
/* 809ECFE8  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 809ECFEC  7C 04 00 00 */	cmpw r4, r0
/* 809ECFF0  41 82 00 1C */	beq lbl_809ED00C
/* 809ECFF4  7F E3 FB 78 */	mr r3, r31
/* 809ECFF8  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809ECFFC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809ED000  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809ED004  7D 89 03 A6 */	mtctr r12
/* 809ED008  4E 80 04 21 */	bctrl 
lbl_809ED00C:
/* 809ED00C  7F E3 FB 78 */	mr r3, r31
/* 809ED010  3C 80 80 9F */	lis r4, m__17daNpc_Grz_Param_c@ha
/* 809ED014  38 A4 F1 F4 */	addi r5, r4, m__17daNpc_Grz_Param_c@l
/* 809ED018  A8 85 00 66 */	lha r4, 0x66(r5)
/* 809ED01C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809ED020  38 A0 00 00 */	li r5, 0
/* 809ED024  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809ED028  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809ED02C  7D 89 03 A6 */	mtctr r12
/* 809ED030  4E 80 04 21 */	bctrl 
/* 809ED034  7F E3 FB 78 */	mr r3, r31
/* 809ED038  3C 80 80 9F */	lis r4, m__17daNpc_Grz_Param_c@ha
/* 809ED03C  38 84 F1 F4 */	addi r4, r4, m__17daNpc_Grz_Param_c@l
/* 809ED040  A8 84 00 68 */	lha r4, 0x68(r4)
/* 809ED044  4B FF F1 21 */	bl setLookMode__11daNpc_Grz_cFi
/* 809ED048  38 00 00 00 */	li r0, 0
/* 809ED04C  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809ED050  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809ED054:
/* 809ED054  38 60 00 01 */	li r3, 1
/* 809ED058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809ED05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809ED060  7C 08 03 A6 */	mtlr r0
/* 809ED064  38 21 00 10 */	addi r1, r1, 0x10
/* 809ED068  4E 80 00 20 */	blr 

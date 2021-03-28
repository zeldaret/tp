lbl_805B3D60:
/* 805B3D60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B3D64  7C 08 02 A6 */	mflr r0
/* 805B3D68  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B3D6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B3D70  7C 7F 1B 78 */	mr r31, r3
/* 805B3D74  4B A6 4F 6C */	b fopAc_IsActor__FPv
/* 805B3D78  2C 03 00 00 */	cmpwi r3, 0
/* 805B3D7C  41 82 00 18 */	beq lbl_805B3D94
/* 805B3D80  A8 1F 00 08 */	lha r0, 8(r31)
/* 805B3D84  2C 00 02 F0 */	cmpwi r0, 0x2f0
/* 805B3D88  40 82 00 0C */	bne lbl_805B3D94
/* 805B3D8C  7F E3 FB 78 */	mr r3, r31
/* 805B3D90  4B A6 5E EC */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805B3D94:
/* 805B3D94  38 60 00 00 */	li r3, 0
/* 805B3D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B3D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B3DA0  7C 08 03 A6 */	mtlr r0
/* 805B3DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 805B3DA8  4E 80 00 20 */	blr 

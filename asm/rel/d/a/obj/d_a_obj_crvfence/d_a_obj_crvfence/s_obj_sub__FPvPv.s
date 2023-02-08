lbl_80BCF390:
/* 80BCF390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCF394  7C 08 02 A6 */	mflr r0
/* 80BCF398  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCF39C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCF3A0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCF3A4  7C 7E 1B 78 */	mr r30, r3
/* 80BCF3A8  7C 9F 23 78 */	mr r31, r4
/* 80BCF3AC  4B 44 99 35 */	bl fopAc_IsActor__FPv
/* 80BCF3B0  2C 03 00 00 */	cmpwi r3, 0
/* 80BCF3B4  41 82 00 34 */	beq lbl_80BCF3E8
/* 80BCF3B8  7F E3 FB 78 */	mr r3, r31
/* 80BCF3BC  7F C4 F3 78 */	mr r4, r30
/* 80BCF3C0  4B 44 B4 21 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80BCF3C4  3C 60 80 BD */	lis r3, lit_3845@ha /* 0x80BD01C8@ha */
/* 80BCF3C8  C0 03 01 C8 */	lfs f0, lit_3845@l(r3)  /* 0x80BD01C8@l */
/* 80BCF3CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BCF3D0  40 80 00 18 */	bge lbl_80BCF3E8
/* 80BCF3D4  A8 1E 00 08 */	lha r0, 8(r30)
/* 80BCF3D8  2C 00 00 EF */	cmpwi r0, 0xef
/* 80BCF3DC  40 82 00 0C */	bne lbl_80BCF3E8
/* 80BCF3E0  7F C3 F3 78 */	mr r3, r30
/* 80BCF3E4  48 00 00 08 */	b lbl_80BCF3EC
lbl_80BCF3E8:
/* 80BCF3E8  38 60 00 00 */	li r3, 0
lbl_80BCF3EC:
/* 80BCF3EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCF3F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCF3F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCF3F8  7C 08 03 A6 */	mtlr r0
/* 80BCF3FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCF400  4E 80 00 20 */	blr 

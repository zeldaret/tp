lbl_80023868:
/* 80023868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002386C  7C 08 02 A6 */	mflr r0
/* 80023870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80023874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023878  93 C1 00 08 */	stw r30, 8(r1)
/* 8002387C  7C 7E 1B 78 */	mr r30, r3
/* 80023880  7C 9F 23 78 */	mr r31, r4
/* 80023884  88 03 00 0B */	lbz r0, 0xb(r3)
/* 80023888  7C 00 FB 78 */	or r0, r0, r31
/* 8002388C  98 03 00 0B */	stb r0, 0xb(r3)
/* 80023890  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 80023894  80 9E 00 B4 */	lwz r4, 0xb4(r30)
/* 80023898  4B FF CD B5 */	bl fpcBs_Is_JustOfType__Fii
/* 8002389C  2C 03 00 00 */	cmpwi r3, 0
/* 800238A0  41 82 00 18 */	beq lbl_800238B8
/* 800238A4  38 7E 00 BC */	addi r3, r30, 0xbc
/* 800238A8  3C 80 80 02 */	lis r4, fpcPause_Enable__FPvUc@ha
/* 800238AC  38 84 38 68 */	addi r4, r4, fpcPause_Enable__FPvUc@l
/* 800238B0  57 E5 06 3E */	clrlwi r5, r31, 0x18
/* 800238B4  4B FF E2 D5 */	bl fpcLyIt_OnlyHere__FP11layer_classPFPvPv_iPv
lbl_800238B8:
/* 800238B8  38 60 00 01 */	li r3, 1
/* 800238BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800238C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 800238C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800238C8  7C 08 03 A6 */	mtlr r0
/* 800238CC  38 21 00 10 */	addi r1, r1, 0x10
/* 800238D0  4E 80 00 20 */	blr 

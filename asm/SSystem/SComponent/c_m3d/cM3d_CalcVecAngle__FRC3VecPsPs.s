lbl_8026E4FC:
/* 8026E4FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8026E500  7C 08 02 A6 */	mflr r0
/* 8026E504  90 01 00 24 */	stw r0, 0x24(r1)
/* 8026E508  39 61 00 20 */	addi r11, r1, 0x20
/* 8026E50C  48 0F 3C D1 */	bl _savegpr_29
/* 8026E510  7C 7D 1B 78 */	mr r29, r3
/* 8026E514  7C 9E 23 78 */	mr r30, r4
/* 8026E518  7C BF 2B 78 */	mr r31, r5
/* 8026E51C  C0 03 00 08 */	lfs f0, 8(r3)
/* 8026E520  FC 20 00 50 */	fneg f1, f0
/* 8026E524  C0 03 00 04 */	lfs f0, 4(r3)
/* 8026E528  EC 21 00 32 */	fmuls f1, f1, f0
/* 8026E52C  C0 42 B7 38 */	lfs f2, lit_2273(r2)
/* 8026E530  4B FF 91 45 */	bl cM_atan2s__Fff
/* 8026E534  7C 03 00 D0 */	neg r0, r3
/* 8026E538  B0 1E 00 00 */	sth r0, 0(r30)
/* 8026E53C  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8026E540  FC 20 00 50 */	fneg f1, f0
/* 8026E544  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8026E548  EC 21 00 32 */	fmuls f1, f1, f0
/* 8026E54C  C0 42 B7 38 */	lfs f2, lit_2273(r2)
/* 8026E550  4B FF 91 25 */	bl cM_atan2s__Fff
/* 8026E554  B0 7F 00 00 */	sth r3, 0(r31)
/* 8026E558  39 61 00 20 */	addi r11, r1, 0x20
/* 8026E55C  48 0F 3C CD */	bl _restgpr_29
/* 8026E560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8026E564  7C 08 03 A6 */	mtlr r0
/* 8026E568  38 21 00 20 */	addi r1, r1, 0x20
/* 8026E56C  4E 80 00 20 */	blr 

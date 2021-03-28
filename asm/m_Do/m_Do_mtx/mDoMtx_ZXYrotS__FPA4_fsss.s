lbl_8000C208:
/* 8000C208  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8000C20C  7C 08 02 A6 */	mflr r0
/* 8000C210  90 01 00 54 */	stw r0, 0x54(r1)
/* 8000C214  39 61 00 50 */	addi r11, r1, 0x50
/* 8000C218  48 35 5F C5 */	bl _savegpr_29
/* 8000C21C  7C 7D 1B 78 */	mr r29, r3
/* 8000C220  7C 9E 23 78 */	mr r30, r4
/* 8000C224  7C DF 33 78 */	mr r31, r6
/* 8000C228  7C A0 07 35 */	extsh. r0, r5
/* 8000C22C  41 82 00 10 */	beq lbl_8000C23C
/* 8000C230  7C A4 2B 78 */	mr r4, r5
/* 8000C234  48 00 01 A9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8000C238  48 00 00 08 */	b lbl_8000C240
lbl_8000C23C:
/* 8000C23C  48 33 A2 49 */	bl PSMTXIdentity
lbl_8000C240:
/* 8000C240  7F C0 07 35 */	extsh. r0, r30
/* 8000C244  41 82 00 20 */	beq lbl_8000C264
/* 8000C248  38 61 00 08 */	addi r3, r1, 8
/* 8000C24C  7F C4 F3 78 */	mr r4, r30
/* 8000C250  48 00 00 F5 */	bl mDoMtx_XrotS__FPA4_fs
/* 8000C254  7F A3 EB 78 */	mr r3, r29
/* 8000C258  38 81 00 08 */	addi r4, r1, 8
/* 8000C25C  7F A5 EB 78 */	mr r5, r29
/* 8000C260  48 33 A2 85 */	bl PSMTXConcat
lbl_8000C264:
/* 8000C264  7F E0 07 35 */	extsh. r0, r31
/* 8000C268  41 82 00 20 */	beq lbl_8000C288
/* 8000C26C  38 61 00 08 */	addi r3, r1, 8
/* 8000C270  7F E4 FB 78 */	mr r4, r31
/* 8000C274  48 00 02 01 */	bl mDoMtx_ZrotS__FPA4_fs
/* 8000C278  7F A3 EB 78 */	mr r3, r29
/* 8000C27C  38 81 00 08 */	addi r4, r1, 8
/* 8000C280  7F A5 EB 78 */	mr r5, r29
/* 8000C284  48 33 A2 61 */	bl PSMTXConcat
lbl_8000C288:
/* 8000C288  39 61 00 50 */	addi r11, r1, 0x50
/* 8000C28C  48 35 5F 9D */	bl _restgpr_29
/* 8000C290  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8000C294  7C 08 03 A6 */	mtlr r0
/* 8000C298  38 21 00 50 */	addi r1, r1, 0x50
/* 8000C29C  4E 80 00 20 */	blr 

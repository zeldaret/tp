lbl_80D26994:
/* 80D26994  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D26998  7C 08 02 A6 */	mflr r0
/* 80D2699C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D269A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D269A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D269A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D269AC  7C 9F 23 78 */	mr r31, r4
/* 80D269B0  41 82 00 38 */	beq lbl_80D269E8
/* 80D269B4  3C 60 80 D2 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80D26E14@ha */
/* 80D269B8  38 03 6E 14 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80D26E14@l */
/* 80D269BC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80D269C0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80D269C4  38 80 FF FF */	li r4, -1
/* 80D269C8  4B 54 85 51 */	bl __dt__8cM3dGCirFv
/* 80D269CC  7F C3 F3 78 */	mr r3, r30
/* 80D269D0  38 80 00 00 */	li r4, 0
/* 80D269D4  4B 54 16 DD */	bl __dt__13cBgS_PolyInfoFv
/* 80D269D8  7F E0 07 35 */	extsh. r0, r31
/* 80D269DC  40 81 00 0C */	ble lbl_80D269E8
/* 80D269E0  7F C3 F3 78 */	mr r3, r30
/* 80D269E4  4B 5A 83 59 */	bl __dl__FPv
lbl_80D269E8:
/* 80D269E8  7F C3 F3 78 */	mr r3, r30
/* 80D269EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D269F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D269F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D269F8  7C 08 03 A6 */	mtlr r0
/* 80D269FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D26A00  4E 80 00 20 */	blr 

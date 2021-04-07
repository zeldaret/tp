lbl_80D3F4DC:
/* 80D3F4DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3F4E0  7C 08 02 A6 */	mflr r0
/* 80D3F4E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3F4E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3F4EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D3F4F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D3F4F4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D3F4F8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D3F4FC  80 C4 5D B4 */	lwz r6, 0x5db4(r4)
/* 80D3F500  41 82 00 58 */	beq lbl_80D3F558
/* 80D3F504  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80D3F508  54 00 0E FC */	rlwinm r0, r0, 1, 0x1b, 0x1e
/* 80D3F50C  3C 80 80 D4 */	lis r4, l_open_speed@ha /* 0x80D40274@ha */
/* 80D3F510  38 84 02 74 */	addi r4, r4, l_open_speed@l /* 0x80D40274@l */
/* 80D3F514  7F E4 02 AE */	lhax r31, r4, r0
/* 80D3F518  28 05 00 00 */	cmplwi r5, 0
/* 80D3F51C  41 82 00 3C */	beq lbl_80D3F558
/* 80D3F520  7C 05 30 40 */	cmplw r5, r6
/* 80D3F524  40 82 00 34 */	bne lbl_80D3F558
/* 80D3F528  C0 26 05 2C */	lfs f1, 0x52c(r6)
/* 80D3F52C  3C 80 80 D4 */	lis r4, lit_3679@ha /* 0x80D40280@ha */
/* 80D3F530  C0 04 02 80 */	lfs f0, lit_3679@l(r4)  /* 0x80D40280@l */
/* 80D3F534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3F538  40 81 00 20 */	ble lbl_80D3F558
/* 80D3F53C  4B FF FE FD */	bl checkPlayerPos__FP9daZdoor_c
/* 80D3F540  2C 03 00 00 */	cmpwi r3, 0
/* 80D3F544  41 82 00 10 */	beq lbl_80D3F554
/* 80D3F548  7C 1F 00 D0 */	neg r0, r31
/* 80D3F54C  B0 1E 0E 2C */	sth r0, 0xe2c(r30)
/* 80D3F550  48 00 00 08 */	b lbl_80D3F558
lbl_80D3F554:
/* 80D3F554  B3 FE 0E 2C */	sth r31, 0xe2c(r30)
lbl_80D3F558:
/* 80D3F558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3F55C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D3F560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3F564  7C 08 03 A6 */	mtlr r0
/* 80D3F568  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3F56C  4E 80 00 20 */	blr 

lbl_800A21E0:
/* 800A21E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A21E4  7C 08 02 A6 */	mflr r0
/* 800A21E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A21EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A21F0  93 C1 00 08 */	stw r30, 8(r1)
/* 800A21F4  7C 7E 1B 78 */	mr r30, r3
/* 800A21F8  2C 04 00 00 */	cmpwi r4, 0
/* 800A21FC  40 82 00 20 */	bne lbl_800A221C
/* 800A2200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A2204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A2208  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800A220C  7F C4 F3 78 */	mr r4, r30
/* 800A2210  4B FD 24 51 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800A2214  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A2218  41 82 00 4C */	beq lbl_800A2264
lbl_800A221C:
/* 800A221C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800A2220  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800A2224  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800A2228  7F E3 FB 78 */	mr r3, r31
/* 800A222C  7F C4 F3 78 */	mr r4, r30
/* 800A2230  4B FD 29 11 */	bl ChkMoveBG_NoDABg__4dBgSFRC13cBgS_PolyInfo
/* 800A2234  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800A2238  41 82 00 2C */	beq lbl_800A2264
/* 800A223C  7F E3 FB 78 */	mr r3, r31
/* 800A2240  A0 9E 00 02 */	lhz r4, 2(r30)
/* 800A2244  4B FD 23 D5 */	bl GetActorPointer__4cBgSCFi
/* 800A2248  28 03 00 00 */	cmplwi r3, 0
/* 800A224C  41 82 00 18 */	beq lbl_800A2264
/* 800A2250  7F E3 FB 78 */	mr r3, r31
/* 800A2254  A0 9E 00 02 */	lhz r4, 2(r30)
/* 800A2258  4B FD 23 C1 */	bl GetActorPointer__4cBgSCFi
/* 800A225C  A8 63 00 08 */	lha r3, 8(r3)
/* 800A2260  48 00 00 08 */	b lbl_800A2268
lbl_800A2264:
/* 800A2264  38 60 00 FD */	li r3, 0xfd
lbl_800A2268:
/* 800A2268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A226C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A2270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A2274  7C 08 03 A6 */	mtlr r0
/* 800A2278  38 21 00 10 */	addi r1, r1, 0x10
/* 800A227C  4E 80 00 20 */	blr 

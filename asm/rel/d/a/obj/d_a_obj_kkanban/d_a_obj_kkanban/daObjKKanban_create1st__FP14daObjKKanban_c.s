lbl_80C46CF4:
/* 80C46CF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C46CF8  7C 08 02 A6 */	mflr r0
/* 80C46CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C46D00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C46D04  93 C1 00 08 */	stw r30, 8(r1)
/* 80C46D08  7C 7F 1B 78 */	mr r31, r3
/* 80C46D0C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C46D10  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C46D14  40 82 00 C0 */	bne lbl_80C46DD4
/* 80C46D18  7F E0 FB 79 */	or. r0, r31, r31
/* 80C46D1C  41 82 00 AC */	beq lbl_80C46DC8
/* 80C46D20  7C 1E 03 78 */	mr r30, r0
/* 80C46D24  4B 43 19 00 */	b __ct__16dBgS_MoveBgActorFv
/* 80C46D28  3C 60 80 C4 */	lis r3, __vt__14daObjKKanban_c@ha
/* 80C46D2C  38 03 70 64 */	addi r0, r3, __vt__14daObjKKanban_c@l
/* 80C46D30  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80C46D34  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C46D38  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C46D3C  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 80C46D40  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80C46D44  4B 43 CA 1C */	b __ct__10dCcD_GSttsFv
/* 80C46D48  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C46D4C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C46D50  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 80C46D54  38 03 00 20 */	addi r0, r3, 0x20
/* 80C46D58  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80C46D5C  3B DE 05 E8 */	addi r30, r30, 0x5e8
/* 80C46D60  7F C3 F3 78 */	mr r3, r30
/* 80C46D64  4B 43 CC C4 */	b __ct__12dCcD_GObjInfFv
/* 80C46D68  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C46D6C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C46D70  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C46D74  3C 60 80 C4 */	lis r3, __vt__8cM3dGAab@ha
/* 80C46D78  38 03 70 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C46D7C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80C46D80  3C 60 80 C4 */	lis r3, __vt__8cM3dGPla@ha
/* 80C46D84  38 03 70 4C */	addi r0, r3, __vt__8cM3dGPla@l
/* 80C46D88  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C46D8C  3C 60 80 C4 */	lis r3, __vt__8cM3dGTri@ha
/* 80C46D90  38 03 70 40 */	addi r0, r3, __vt__8cM3dGTri@l
/* 80C46D94  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C46D98  3C 60 80 3C */	lis r3, __vt__12cCcD_TriAttr@ha
/* 80C46D9C  38 63 36 6C */	addi r3, r3, __vt__12cCcD_TriAttr@l
/* 80C46DA0  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80C46DA4  38 03 00 58 */	addi r0, r3, 0x58
/* 80C46DA8  90 1E 01 34 */	stw r0, 0x134(r30)
/* 80C46DAC  3C 60 80 3B */	lis r3, __vt__8dCcD_Tri@ha
/* 80C46DB0  38 63 C0 E0 */	addi r3, r3, __vt__8dCcD_Tri@l
/* 80C46DB4  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80C46DB8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C46DBC  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80C46DC0  38 03 00 84 */	addi r0, r3, 0x84
/* 80C46DC4  90 1E 01 34 */	stw r0, 0x134(r30)
lbl_80C46DC8:
/* 80C46DC8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C46DCC  60 00 00 08 */	ori r0, r0, 8
/* 80C46DD0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C46DD4:
/* 80C46DD4  7F E3 FB 78 */	mr r3, r31
/* 80C46DD8  4B FF FC 8D */	bl create1st__14daObjKKanban_cFv
/* 80C46DDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C46DE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C46DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C46DE8  7C 08 03 A6 */	mtlr r0
/* 80C46DEC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C46DF0  4E 80 00 20 */	blr 

lbl_80B241D4:
/* 80B241D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B241D8  7C 08 02 A6 */	mflr r0
/* 80B241DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B241E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B241E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80B241E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B241EC  7C 9F 23 78 */	mr r31, r4
/* 80B241F0  41 82 00 38 */	beq lbl_80B24228
/* 80B241F4  3C 60 80 B2 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80B256FC@ha */
/* 80B241F8  38 03 56 FC */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80B256FC@l */
/* 80B241FC  90 1E 00 0C */	stw r0, 0xc(r30)
/* 80B24200  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B24204  38 80 FF FF */	li r4, -1
/* 80B24208  4B 74 AD 11 */	bl __dt__8cM3dGCirFv
/* 80B2420C  7F C3 F3 78 */	mr r3, r30
/* 80B24210  38 80 00 00 */	li r4, 0
/* 80B24214  4B 74 3E 9D */	bl __dt__13cBgS_PolyInfoFv
/* 80B24218  7F E0 07 35 */	extsh. r0, r31
/* 80B2421C  40 81 00 0C */	ble lbl_80B24228
/* 80B24220  7F C3 F3 78 */	mr r3, r30
/* 80B24224  4B 7A AB 19 */	bl __dl__FPv
lbl_80B24228:
/* 80B24228  7F C3 F3 78 */	mr r3, r30
/* 80B2422C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B24230  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B24234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B24238  7C 08 03 A6 */	mtlr r0
/* 80B2423C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B24240  4E 80 00 20 */	blr 

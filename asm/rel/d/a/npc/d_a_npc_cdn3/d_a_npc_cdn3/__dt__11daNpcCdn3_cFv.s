lbl_8097D684:
/* 8097D684  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097D688  7C 08 02 A6 */	mflr r0
/* 8097D68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097D690  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097D694  93 C1 00 08 */	stw r30, 8(r1)
/* 8097D698  7C 7E 1B 79 */	or. r30, r3, r3
/* 8097D69C  7C 9F 23 78 */	mr r31, r4
/* 8097D6A0  41 82 00 6C */	beq lbl_8097D70C
/* 8097D6A4  3C 80 80 98 */	lis r4, __vt__11daNpcCdn3_c@ha
/* 8097D6A8  38 04 06 E4 */	addi r0, r4, __vt__11daNpcCdn3_c@l
/* 8097D6AC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8097D6B0  80 9E 0A 98 */	lwz r4, 0xa98(r30)
/* 8097D6B4  80 BE 0B 58 */	lwz r5, 0xb58(r30)
/* 8097D6B8  4B 7D B6 04 */	b removeResrc__10daNpcCd2_cFii
/* 8097D6BC  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 8097D6C0  28 00 00 00 */	cmplwi r0, 0
/* 8097D6C4  41 82 00 0C */	beq lbl_8097D6D0
/* 8097D6C8  80 7E 05 8C */	lwz r3, 0x58c(r30)
/* 8097D6CC  4B 69 3C 44 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_8097D6D0:
/* 8097D6D0  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 8097D6D4  38 80 FF FF */	li r4, -1
/* 8097D6D8  4B 8C C8 70 */	b __dt__10dMsgFlow_cFv
/* 8097D6DC  34 1E 0A F8 */	addic. r0, r30, 0xaf8
/* 8097D6E0  41 82 00 10 */	beq lbl_8097D6F0
/* 8097D6E4  3C 60 80 98 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8097D6E8  38 03 06 D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8097D6EC  90 1E 0A FC */	stw r0, 0xafc(r30)
lbl_8097D6F0:
/* 8097D6F0  7F C3 F3 78 */	mr r3, r30
/* 8097D6F4  38 80 00 00 */	li r4, 0
/* 8097D6F8  48 00 19 39 */	bl __dt__10daNpcCd2_cFv
/* 8097D6FC  7F E0 07 35 */	extsh. r0, r31
/* 8097D700  40 81 00 0C */	ble lbl_8097D70C
/* 8097D704  7F C3 F3 78 */	mr r3, r30
/* 8097D708  4B 95 16 34 */	b __dl__FPv
lbl_8097D70C:
/* 8097D70C  7F C3 F3 78 */	mr r3, r30
/* 8097D710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097D714  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097D718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097D71C  7C 08 03 A6 */	mtlr r0
/* 8097D720  38 21 00 10 */	addi r1, r1, 0x10
/* 8097D724  4E 80 00 20 */	blr 

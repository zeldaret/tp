lbl_80670294:
/* 80670294  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80670298  7C 08 02 A6 */	mflr r0
/* 8067029C  90 01 00 14 */	stw r0, 0x14(r1)
/* 806702A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806702A4  7C 7F 1B 78 */	mr r31, r3
/* 806702A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806702AC  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 806702B0  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 806702B4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 806702B8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 806702BC  41 82 00 0C */	beq lbl_806702C8
/* 806702C0  38 60 00 00 */	li r3, 0
/* 806702C4  48 00 00 48 */	b lbl_8067030C
lbl_806702C8:
/* 806702C8  38 64 09 58 */	addi r3, r4, 0x958
/* 806702CC  38 80 00 02 */	li r4, 2
/* 806702D0  4B 9C 46 64 */	b isDungeonItem__12dSv_memBit_cCFi
/* 806702D4  2C 03 00 00 */	cmpwi r3, 0
/* 806702D8  40 82 00 0C */	bne lbl_806702E4
/* 806702DC  38 60 00 00 */	li r3, 0
/* 806702E0  48 00 00 2C */	b lbl_8067030C
lbl_806702E4:
/* 806702E4  7F E3 FB 78 */	mr r3, r31
/* 806702E8  4B FF FF 0D */	bl checkFront__9daBdoor_cFv
/* 806702EC  2C 03 00 00 */	cmpwi r3, 0
/* 806702F0  40 82 00 0C */	bne lbl_806702FC
/* 806702F4  38 60 00 00 */	li r3, 0
/* 806702F8  48 00 00 14 */	b lbl_8067030C
lbl_806702FC:
/* 806702FC  7F E3 FB 78 */	mr r3, r31
/* 80670300  4B FF FD C5 */	bl checkArea__9daBdoor_cFv
/* 80670304  30 03 FF FF */	addic r0, r3, -1
/* 80670308  7C 60 19 10 */	subfe r3, r0, r3
lbl_8067030C:
/* 8067030C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80670310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80670314  7C 08 03 A6 */	mtlr r0
/* 80670318  38 21 00 10 */	addi r1, r1, 0x10
/* 8067031C  4E 80 00 20 */	blr 

lbl_80D382C4:
/* 80D382C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D382C8  7C 08 02 A6 */	mflr r0
/* 80D382CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D382D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D382D4  7C 7F 1B 78 */	mr r31, r3
/* 80D382D8  4B FF FF A1 */	bl chkEveOccur__13daWindStone_cFv
/* 80D382DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D382E0  40 82 00 18 */	bne lbl_80D382F8
/* 80D382E4  38 00 00 00 */	li r0, 0
/* 80D382E8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D382EC  38 00 00 02 */	li r0, 2
/* 80D382F0  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80D382F4  48 00 00 54 */	b lbl_80D38348
lbl_80D382F8:
/* 80D382F8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D382FC  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80D38300  7C 04 07 74 */	extsb r4, r0
/* 80D38304  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D38308  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D3830C  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80D38310  38 63 2D 84 */	addi r3, r3, 0x2d84
/* 80D38314  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D38318  4B 59 33 D4 */	b startWindStoneSound__13Z2WolfHowlMgrFScP3Vec
/* 80D3831C  38 00 00 00 */	li r0, 0
/* 80D38320  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D38324  7F E3 FB 78 */	mr r3, r31
/* 80D38328  4B FF FE C5 */	bl chkWlfInRange__13daWindStone_cFv
/* 80D3832C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D38330  41 82 00 18 */	beq lbl_80D38348
/* 80D38334  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 80D38338  60 00 00 80 */	ori r0, r0, 0x80
/* 80D3833C  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80D38340  38 00 00 41 */	li r0, 0x41
/* 80D38344  98 1F 05 4B */	stb r0, 0x54b(r31)
lbl_80D38348:
/* 80D38348  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3834C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D38350  7C 08 03 A6 */	mtlr r0
/* 80D38354  38 21 00 10 */	addi r1, r1, 0x10
/* 80D38358  4E 80 00 20 */	blr 

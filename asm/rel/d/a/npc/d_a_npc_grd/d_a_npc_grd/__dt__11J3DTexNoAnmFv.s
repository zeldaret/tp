lbl_809D0744:
/* 809D0744  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D0748  7C 08 02 A6 */	mflr r0
/* 809D074C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D0750  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D0754  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D0758  41 82 00 1C */	beq lbl_809D0774
/* 809D075C  3C A0 80 9D */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x809D3DC4@ha */
/* 809D0760  38 05 3D C4 */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x809D3DC4@l */
/* 809D0764  90 1F 00 00 */	stw r0, 0(r31)
/* 809D0768  7C 80 07 35 */	extsh. r0, r4
/* 809D076C  40 81 00 08 */	ble lbl_809D0774
/* 809D0770  4B 8F E5 CD */	bl __dl__FPv
lbl_809D0774:
/* 809D0774  7F E3 FB 78 */	mr r3, r31
/* 809D0778  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D077C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D0780  7C 08 03 A6 */	mtlr r0
/* 809D0784  38 21 00 10 */	addi r1, r1, 0x10
/* 809D0788  4E 80 00 20 */	blr 

lbl_804BD050:
/* 804BD050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BD054  7C 08 02 A6 */	mflr r0
/* 804BD058  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BD05C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BD060  7C 7F 1B 79 */	or. r31, r3, r3
/* 804BD064  41 82 00 1C */	beq lbl_804BD080
/* 804BD068  3C A0 80 4C */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x804C6CA8@ha */
/* 804BD06C  38 05 6C A8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x804C6CA8@l */
/* 804BD070  90 1F 00 00 */	stw r0, 0(r31)
/* 804BD074  7C 80 07 35 */	extsh. r0, r4
/* 804BD078  40 81 00 08 */	ble lbl_804BD080
/* 804BD07C  4B E1 1C C1 */	bl __dl__FPv
lbl_804BD080:
/* 804BD080  7F E3 FB 78 */	mr r3, r31
/* 804BD084  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BD088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BD08C  7C 08 03 A6 */	mtlr r0
/* 804BD090  38 21 00 10 */	addi r1, r1, 0x10
/* 804BD094  4E 80 00 20 */	blr 

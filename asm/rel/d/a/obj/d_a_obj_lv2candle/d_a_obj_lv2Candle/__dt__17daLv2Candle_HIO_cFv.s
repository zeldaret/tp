lbl_8058F050:
/* 8058F050  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058F054  7C 08 02 A6 */	mflr r0
/* 8058F058  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058F05C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058F060  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058F064  41 82 00 30 */	beq lbl_8058F094
/* 8058F068  3C 60 80 59 */	lis r3, __vt__17daLv2Candle_HIO_c@ha
/* 8058F06C  38 03 F2 80 */	addi r0, r3, __vt__17daLv2Candle_HIO_c@l
/* 8058F070  90 1F 00 00 */	stw r0, 0(r31)
/* 8058F074  41 82 00 10 */	beq lbl_8058F084
/* 8058F078  3C 60 80 59 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 8058F07C  38 03 F2 8C */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 8058F080  90 1F 00 00 */	stw r0, 0(r31)
lbl_8058F084:
/* 8058F084  7C 80 07 35 */	extsh. r0, r4
/* 8058F088  40 81 00 0C */	ble lbl_8058F094
/* 8058F08C  7F E3 FB 78 */	mr r3, r31
/* 8058F090  4B D3 FC AC */	b __dl__FPv
lbl_8058F094:
/* 8058F094  7F E3 FB 78 */	mr r3, r31
/* 8058F098  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058F09C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058F0A0  7C 08 03 A6 */	mtlr r0
/* 8058F0A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058F0A8  4E 80 00 20 */	blr 

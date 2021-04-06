lbl_8084C078:
/* 8084C078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8084C07C  7C 08 02 A6 */	mflr r0
/* 8084C080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8084C084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8084C088  7C 7F 1B 78 */	mr r31, r3
/* 8084C08C  88 A3 07 72 */	lbz r5, 0x772(r3)
/* 8084C090  7C A0 07 75 */	extsb. r0, r5
/* 8084C094  40 81 00 20 */	ble lbl_8084C0B4
/* 8084C098  88 1F 07 70 */	lbz r0, 0x770(r31)
/* 8084C09C  7C 04 07 74 */	extsb r4, r0
/* 8084C0A0  80 7F 07 68 */	lwz r3, 0x768(r31)
/* 8084C0A4  A0 63 00 00 */	lhz r3, 0(r3)
/* 8084C0A8  38 03 FF FF */	addi r0, r3, -1
/* 8084C0AC  7C 04 00 00 */	cmpw r4, r0
/* 8084C0B0  40 80 00 1C */	bge lbl_8084C0CC
lbl_8084C0B4:
/* 8084C0B4  7C A0 07 75 */	extsb. r0, r5
/* 8084C0B8  40 80 00 A8 */	bge lbl_8084C160
/* 8084C0BC  88 1F 07 70 */	lbz r0, 0x770(r31)
/* 8084C0C0  7C 00 07 74 */	extsb r0, r0
/* 8084C0C4  2C 00 00 01 */	cmpwi r0, 1
/* 8084C0C8  40 80 00 98 */	bge lbl_8084C160
lbl_8084C0CC:
/* 8084C0CC  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 8084C0D0  2C 00 00 01 */	cmpwi r0, 1
/* 8084C0D4  40 82 00 8C */	bne lbl_8084C160
/* 8084C0D8  4B 7D 24 81 */	bl fopOvlpM_IsPeek__Fv
/* 8084C0DC  2C 03 00 00 */	cmpwi r3, 0
/* 8084C0E0  40 82 00 80 */	bne lbl_8084C160
/* 8084C0E4  7F E3 FB 78 */	mr r3, r31
/* 8084C0E8  38 80 00 00 */	li r4, 0
/* 8084C0EC  38 A0 00 04 */	li r5, 4
/* 8084C0F0  4B FF E9 A9 */	bl setActionMode__8daKago_cFii
/* 8084C0F4  38 00 01 2C */	li r0, 0x12c
/* 8084C0F8  90 1F 07 28 */	stw r0, 0x728(r31)
/* 8084C0FC  7F E3 FB 78 */	mr r3, r31
/* 8084C100  38 80 00 09 */	li r4, 9
/* 8084C104  4B FF D6 95 */	bl checkBck__8daKago_cFi
/* 8084C108  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084C10C  40 82 00 24 */	bne lbl_8084C130
/* 8084C110  7F E3 FB 78 */	mr r3, r31
/* 8084C114  38 80 00 09 */	li r4, 9
/* 8084C118  38 A0 00 02 */	li r5, 2
/* 8084C11C  3C C0 80 85 */	lis r6, lit_3943@ha /* 0x80854B3C@ha */
/* 8084C120  C0 26 4B 3C */	lfs f1, lit_3943@l(r6)  /* 0x80854B3C@l */
/* 8084C124  3C C0 80 85 */	lis r6, lit_3932@ha /* 0x80854B10@ha */
/* 8084C128  C0 46 4B 10 */	lfs f2, lit_3932@l(r6)  /* 0x80854B10@l */
/* 8084C12C  4B FF D5 C5 */	bl setBck__8daKago_cFiUcff
lbl_8084C130:
/* 8084C130  88 1F 07 72 */	lbz r0, 0x772(r31)
/* 8084C134  7C 00 07 75 */	extsb. r0, r0
/* 8084C138  40 81 00 14 */	ble lbl_8084C14C
/* 8084C13C  7F E3 FB 78 */	mr r3, r31
/* 8084C140  38 80 00 01 */	li r4, 1
/* 8084C144  4B FF ED 35 */	bl setSceneChange__8daKago_cFi
/* 8084C148  48 00 00 10 */	b lbl_8084C158
lbl_8084C14C:
/* 8084C14C  7F E3 FB 78 */	mr r3, r31
/* 8084C150  38 80 00 02 */	li r4, 2
/* 8084C154  4B FF ED 25 */	bl setSceneChange__8daKago_cFi
lbl_8084C158:
/* 8084C158  38 60 00 01 */	li r3, 1
/* 8084C15C  48 00 00 08 */	b lbl_8084C164
lbl_8084C160:
/* 8084C160  38 60 00 00 */	li r3, 0
lbl_8084C164:
/* 8084C164  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8084C168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8084C16C  7C 08 03 A6 */	mtlr r0
/* 8084C170  38 21 00 10 */	addi r1, r1, 0x10
/* 8084C174  4E 80 00 20 */	blr 

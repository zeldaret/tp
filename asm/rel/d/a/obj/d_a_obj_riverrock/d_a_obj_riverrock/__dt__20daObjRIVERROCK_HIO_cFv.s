lbl_80CBD9C4:
/* 80CBD9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBD9C8  7C 08 02 A6 */	mflr r0
/* 80CBD9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBD9D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBD9D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBD9D8  41 82 00 1C */	beq lbl_80CBD9F4
/* 80CBD9DC  3C A0 80 CC */	lis r5, __vt__20daObjRIVERROCK_HIO_c@ha /* 0x80CBDBD4@ha */
/* 80CBD9E0  38 05 DB D4 */	addi r0, r5, __vt__20daObjRIVERROCK_HIO_c@l /* 0x80CBDBD4@l */
/* 80CBD9E4  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBD9E8  7C 80 07 35 */	extsh. r0, r4
/* 80CBD9EC  40 81 00 08 */	ble lbl_80CBD9F4
/* 80CBD9F0  4B 61 13 4D */	bl __dl__FPv
lbl_80CBD9F4:
/* 80CBD9F4  7F E3 FB 78 */	mr r3, r31
/* 80CBD9F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBD9FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBDA00  7C 08 03 A6 */	mtlr r0
/* 80CBDA04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBDA08  4E 80 00 20 */	blr 

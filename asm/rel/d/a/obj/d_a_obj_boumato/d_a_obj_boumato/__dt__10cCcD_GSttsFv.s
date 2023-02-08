lbl_80BBC348:
/* 80BBC348  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BBC34C  7C 08 02 A6 */	mflr r0
/* 80BBC350  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BBC354  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BBC358  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BBC35C  41 82 00 1C */	beq lbl_80BBC378
/* 80BBC360  3C A0 80 BC */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BBC60C@ha */
/* 80BBC364  38 05 C6 0C */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BBC60C@l */
/* 80BBC368  90 1F 00 00 */	stw r0, 0(r31)
/* 80BBC36C  7C 80 07 35 */	extsh. r0, r4
/* 80BBC370  40 81 00 08 */	ble lbl_80BBC378
/* 80BBC374  4B 71 29 C9 */	bl __dl__FPv
lbl_80BBC378:
/* 80BBC378  7F E3 FB 78 */	mr r3, r31
/* 80BBC37C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BBC380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBC384  7C 08 03 A6 */	mtlr r0
/* 80BBC388  38 21 00 10 */	addi r1, r1, 0x10
/* 80BBC38C  4E 80 00 20 */	blr 

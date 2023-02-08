lbl_80BA21E0:
/* 80BA21E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA21E4  7C 08 02 A6 */	mflr r0
/* 80BA21E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA21EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA21F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA21F4  41 82 00 30 */	beq lbl_80BA2224
/* 80BA21F8  3C 60 80 BA */	lis r3, __vt__18daAmiShutter_HIO_c@ha /* 0x80BA253C@ha */
/* 80BA21FC  38 03 25 3C */	addi r0, r3, __vt__18daAmiShutter_HIO_c@l /* 0x80BA253C@l */
/* 80BA2200  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA2204  41 82 00 10 */	beq lbl_80BA2214
/* 80BA2208  3C 60 80 BA */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80BA2548@ha */
/* 80BA220C  38 03 25 48 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80BA2548@l */
/* 80BA2210  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BA2214:
/* 80BA2214  7C 80 07 35 */	extsh. r0, r4
/* 80BA2218  40 81 00 0C */	ble lbl_80BA2224
/* 80BA221C  7F E3 FB 78 */	mr r3, r31
/* 80BA2220  4B 72 CB 1D */	bl __dl__FPv
lbl_80BA2224:
/* 80BA2224  7F E3 FB 78 */	mr r3, r31
/* 80BA2228  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA222C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA2230  7C 08 03 A6 */	mtlr r0
/* 80BA2234  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA2238  4E 80 00 20 */	blr 

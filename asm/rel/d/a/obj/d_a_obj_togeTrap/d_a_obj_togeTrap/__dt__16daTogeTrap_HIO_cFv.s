lbl_80D18DA8:
/* 80D18DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D18DAC  7C 08 02 A6 */	mflr r0
/* 80D18DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D18DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D18DB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D18DBC  41 82 00 40 */	beq lbl_80D18DFC
/* 80D18DC0  3C 60 80 D2 */	lis r3, __vt__16daTogeTrap_HIO_c@ha /* 0x80D1907C@ha */
/* 80D18DC4  38 03 90 7C */	addi r0, r3, __vt__16daTogeTrap_HIO_c@l /* 0x80D1907C@l */
/* 80D18DC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D18DCC  41 82 00 20 */	beq lbl_80D18DEC
/* 80D18DD0  3C 60 80 D2 */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80D19088@ha */
/* 80D18DD4  38 03 90 88 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l /* 0x80D19088@l */
/* 80D18DD8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D18DDC  41 82 00 10 */	beq lbl_80D18DEC
/* 80D18DE0  3C 60 80 D2 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80D19094@ha */
/* 80D18DE4  38 03 90 94 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80D19094@l */
/* 80D18DE8  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D18DEC:
/* 80D18DEC  7C 80 07 35 */	extsh. r0, r4
/* 80D18DF0  40 81 00 0C */	ble lbl_80D18DFC
/* 80D18DF4  7F E3 FB 78 */	mr r3, r31
/* 80D18DF8  4B 5B 5F 45 */	bl __dl__FPv
lbl_80D18DFC:
/* 80D18DFC  7F E3 FB 78 */	mr r3, r31
/* 80D18E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D18E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D18E08  7C 08 03 A6 */	mtlr r0
/* 80D18E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D18E10  4E 80 00 20 */	blr 

lbl_80CA610C:
/* 80CA610C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6110  7C 08 02 A6 */	mflr r0
/* 80CA6114  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6118  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA611C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA6120  41 82 00 64 */	beq lbl_80CA6184
/* 80CA6124  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CA6128  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CA612C  90 7F 00 18 */	stw r3, 0x18(r31)
/* 80CA6130  38 03 00 20 */	addi r0, r3, 0x20
/* 80CA6134  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80CA6138  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 80CA613C  41 82 00 24 */	beq lbl_80CA6160
/* 80CA6140  3C 60 80 CA */	lis r3, __vt__10dCcD_GStts@ha
/* 80CA6144  38 03 66 28 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CA6148  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80CA614C  34 1F 00 1C */	addic. r0, r31, 0x1c
/* 80CA6150  41 82 00 10 */	beq lbl_80CA6160
/* 80CA6154  3C 60 80 CA */	lis r3, __vt__10cCcD_GStts@ha
/* 80CA6158  38 03 66 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CA615C  90 1F 00 1C */	stw r0, 0x1c(r31)
lbl_80CA6160:
/* 80CA6160  28 1F 00 00 */	cmplwi r31, 0
/* 80CA6164  41 82 00 10 */	beq lbl_80CA6174
/* 80CA6168  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CA616C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CA6170  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80CA6174:
/* 80CA6174  7C 80 07 35 */	extsh. r0, r4
/* 80CA6178  40 81 00 0C */	ble lbl_80CA6184
/* 80CA617C  7F E3 FB 78 */	mr r3, r31
/* 80CA6180  4B 62 8B BC */	b __dl__FPv
lbl_80CA6184:
/* 80CA6184  7F E3 FB 78 */	mr r3, r31
/* 80CA6188  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA618C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6190  7C 08 03 A6 */	mtlr r0
/* 80CA6194  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6198  4E 80 00 20 */	blr 

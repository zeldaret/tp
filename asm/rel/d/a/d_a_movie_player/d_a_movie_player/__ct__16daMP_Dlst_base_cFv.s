lbl_80878FD8:
/* 80878FD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878FDC  7C 08 02 A6 */	mflr r0
/* 80878FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878FE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80878FE8  7C 7F 1B 78 */	mr r31, r3
/* 80878FEC  48 00 00 29 */	bl __ct__12dDlst_base_cFv
/* 80878FF0  3C 60 80 88 */	lis r3, __vt__16daMP_Dlst_base_c@ha /* 0x80879584@ha */
/* 80878FF4  38 03 95 84 */	addi r0, r3, __vt__16daMP_Dlst_base_c@l /* 0x80879584@l */
/* 80878FF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80878FFC  7F E3 FB 78 */	mr r3, r31
/* 80879000  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80879004  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80879008  7C 08 03 A6 */	mtlr r0
/* 8087900C  38 21 00 10 */	addi r1, r1, 0x10
/* 80879010  4E 80 00 20 */	blr 

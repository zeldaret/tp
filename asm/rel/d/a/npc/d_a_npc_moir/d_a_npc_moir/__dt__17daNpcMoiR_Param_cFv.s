lbl_80A83240:
/* 80A83240  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A83244  7C 08 02 A6 */	mflr r0
/* 80A83248  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A8324C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A83250  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A83254  41 82 00 1C */	beq lbl_80A83270
/* 80A83258  3C A0 80 A8 */	lis r5, __vt__17daNpcMoiR_Param_c@ha
/* 80A8325C  38 05 3D 60 */	addi r0, r5, __vt__17daNpcMoiR_Param_c@l
/* 80A83260  90 1F 00 00 */	stw r0, 0(r31)
/* 80A83264  7C 80 07 35 */	extsh. r0, r4
/* 80A83268  40 81 00 08 */	ble lbl_80A83270
/* 80A8326C  4B 84 BA D0 */	b __dl__FPv
lbl_80A83270:
/* 80A83270  7F E3 FB 78 */	mr r3, r31
/* 80A83274  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A83278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A8327C  7C 08 03 A6 */	mtlr r0
/* 80A83280  38 21 00 10 */	addi r1, r1, 0x10
/* 80A83284  4E 80 00 20 */	blr 

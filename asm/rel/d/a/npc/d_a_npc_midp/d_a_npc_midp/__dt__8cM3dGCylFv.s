lbl_80A7387C:
/* 80A7387C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A73880  7C 08 02 A6 */	mflr r0
/* 80A73884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A7388C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A73890  41 82 00 1C */	beq lbl_80A738AC
/* 80A73894  3C A0 80 A7 */	lis r5, __vt__8cM3dGCyl@ha
/* 80A73898  38 05 3C 6C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80A7389C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A738A0  7C 80 07 35 */	extsh. r0, r4
/* 80A738A4  40 81 00 08 */	ble lbl_80A738AC
/* 80A738A8  4B 85 B4 94 */	b __dl__FPv
lbl_80A738AC:
/* 80A738AC  7F E3 FB 78 */	mr r3, r31
/* 80A738B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A738B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A738B8  7C 08 03 A6 */	mtlr r0
/* 80A738BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A738C0  4E 80 00 20 */	blr 

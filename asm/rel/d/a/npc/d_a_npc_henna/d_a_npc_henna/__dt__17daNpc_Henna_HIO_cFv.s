lbl_80549E40:
/* 80549E40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80549E44  7C 08 02 A6 */	mflr r0
/* 80549E48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80549E4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80549E50  7C 7F 1B 79 */	or. r31, r3, r3
/* 80549E54  41 82 00 1C */	beq lbl_80549E70
/* 80549E58  3C A0 80 55 */	lis r5, __vt__17daNpc_Henna_HIO_c@ha
/* 80549E5C  38 05 AF 68 */	addi r0, r5, __vt__17daNpc_Henna_HIO_c@l
/* 80549E60  90 1F 00 00 */	stw r0, 0(r31)
/* 80549E64  7C 80 07 35 */	extsh. r0, r4
/* 80549E68  40 81 00 08 */	ble lbl_80549E70
/* 80549E6C  4B D8 4E D0 */	b __dl__FPv
lbl_80549E70:
/* 80549E70  7F E3 FB 78 */	mr r3, r31
/* 80549E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80549E78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80549E7C  7C 08 03 A6 */	mtlr r0
/* 80549E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80549E84  4E 80 00 20 */	blr 

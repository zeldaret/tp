lbl_80B1421C:
/* 80B1421C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B14220  7C 08 02 A6 */	mflr r0
/* 80B14224  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B14228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1422C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B14230  41 82 00 1C */	beq lbl_80B1424C
/* 80B14234  3C A0 80 B1 */	lis r5, __vt__16daNpc_Tkj2_HIO_c@ha /* 0x80B144E8@ha */
/* 80B14238  38 05 44 E8 */	addi r0, r5, __vt__16daNpc_Tkj2_HIO_c@l /* 0x80B144E8@l */
/* 80B1423C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B14240  7C 80 07 35 */	extsh. r0, r4
/* 80B14244  40 81 00 08 */	ble lbl_80B1424C
/* 80B14248  4B 7B AA F5 */	bl __dl__FPv
lbl_80B1424C:
/* 80B1424C  7F E3 FB 78 */	mr r3, r31
/* 80B14250  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B14254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B14258  7C 08 03 A6 */	mtlr r0
/* 80B1425C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B14260  4E 80 00 20 */	blr 

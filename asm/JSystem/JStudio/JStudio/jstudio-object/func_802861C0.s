lbl_802861C0:
/* 802861C0  3C A0 80 28 */	lis r5, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha /* 0x80285EB8@ha */
/* 802861C4  38 C5 5E B8 */	addi r6, r5, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l /* 0x80285EB8@l */
/* 802861C8  38 A0 00 00 */	li r5, 0
/* 802861CC  48 00 00 24 */	b lbl_802861F0
lbl_802861D0:
/* 802861D0  C0 04 00 04 */	lfs f0, 4(r4)
/* 802861D4  80 E3 00 08 */	lwz r7, 8(r3)
/* 802861D8  1C 08 00 14 */	mulli r0, r8, 0x14
/* 802861DC  7C E7 02 14 */	add r7, r7, r0
/* 802861E0  90 C7 00 08 */	stw r6, 8(r7)
/* 802861E4  90 A7 00 04 */	stw r5, 4(r7)
/* 802861E8  D0 07 00 0C */	stfs f0, 0xc(r7)
/* 802861EC  38 84 00 08 */	addi r4, r4, 8
lbl_802861F0:
/* 802861F0  81 04 00 00 */	lwz r8, 0(r4)
/* 802861F4  3C 08 00 01 */	addis r0, r8, 1
/* 802861F8  28 00 FF FF */	cmplwi r0, 0xffff
/* 802861FC  40 82 FF D4 */	bne lbl_802861D0
/* 80286200  4E 80 00 20 */	blr 

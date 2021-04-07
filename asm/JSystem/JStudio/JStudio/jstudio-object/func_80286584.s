lbl_80286584:
/* 80286584  80 63 00 08 */	lwz r3, 8(r3)
/* 80286588  1C 05 00 14 */	mulli r0, r5, 0x14
/* 8028658C  7C 83 02 14 */	add r4, r3, r0
/* 80286590  C0 06 00 00 */	lfs f0, 0(r6)
/* 80286594  3C 60 80 28 */	lis r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha /* 0x80285EB8@ha */
/* 80286598  38 03 5E B8 */	addi r0, r3, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l /* 0x80285EB8@l */
/* 8028659C  90 04 00 08 */	stw r0, 8(r4)
/* 802865A0  38 00 00 00 */	li r0, 0
/* 802865A4  90 04 00 04 */	stw r0, 4(r4)
/* 802865A8  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802865AC  4E 80 00 20 */	blr 

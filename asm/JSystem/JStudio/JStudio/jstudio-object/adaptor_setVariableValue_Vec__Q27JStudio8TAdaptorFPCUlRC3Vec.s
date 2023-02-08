lbl_80286204:
/* 80286204  C0 05 00 00 */	lfs f0, 0(r5)
/* 80286208  80 C3 00 08 */	lwz r6, 8(r3)
/* 8028620C  80 04 00 00 */	lwz r0, 0(r4)
/* 80286210  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286214  7D 26 02 14 */	add r9, r6, r0
/* 80286218  3C C0 80 28 */	lis r6, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha /* 0x80285EB8@ha */
/* 8028621C  39 06 5E B8 */	addi r8, r6, update_immediate___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l /* 0x80285EB8@l */
/* 80286220  91 09 00 08 */	stw r8, 8(r9)
/* 80286224  38 E0 00 00 */	li r7, 0
/* 80286228  90 E9 00 04 */	stw r7, 4(r9)
/* 8028622C  D0 09 00 0C */	stfs f0, 0xc(r9)
/* 80286230  C0 05 00 04 */	lfs f0, 4(r5)
/* 80286234  80 C3 00 08 */	lwz r6, 8(r3)
/* 80286238  80 04 00 04 */	lwz r0, 4(r4)
/* 8028623C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286240  7C C6 02 14 */	add r6, r6, r0
/* 80286244  91 06 00 08 */	stw r8, 8(r6)
/* 80286248  90 E6 00 04 */	stw r7, 4(r6)
/* 8028624C  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 80286250  C0 05 00 08 */	lfs f0, 8(r5)
/* 80286254  80 63 00 08 */	lwz r3, 8(r3)
/* 80286258  80 04 00 08 */	lwz r0, 8(r4)
/* 8028625C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286260  7C 63 02 14 */	add r3, r3, r0
/* 80286264  91 03 00 08 */	stw r8, 8(r3)
/* 80286268  90 E3 00 04 */	stw r7, 4(r3)
/* 8028626C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80286270  4E 80 00 20 */	blr 

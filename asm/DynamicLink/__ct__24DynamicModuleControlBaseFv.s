lbl_80262284:
/* 80262284  3C 80 80 3C */	lis r4, __vt__24DynamicModuleControlBase@ha /* 0x803C34F4@ha */
/* 80262288  38 04 34 F4 */	addi r0, r4, __vt__24DynamicModuleControlBase@l /* 0x803C34F4@l */
/* 8026228C  90 03 00 0C */	stw r0, 0xc(r3)
/* 80262290  38 00 00 00 */	li r0, 0
/* 80262294  B0 03 00 00 */	sth r0, 0(r3)
/* 80262298  B0 03 00 02 */	sth r0, 2(r3)
/* 8026229C  90 03 00 08 */	stw r0, 8(r3)
/* 802622A0  80 0D 8B B8 */	lwz r0, mFirst__24DynamicModuleControlBase(r13)
/* 802622A4  28 00 00 00 */	cmplwi r0, 0
/* 802622A8  40 82 00 08 */	bne lbl_802622B0
/* 802622AC  90 6D 8B B8 */	stw r3, mFirst__24DynamicModuleControlBase(r13)
lbl_802622B0:
/* 802622B0  80 0D 8B BC */	lwz r0, mLast__24DynamicModuleControlBase(r13)
/* 802622B4  90 03 00 04 */	stw r0, 4(r3)
/* 802622B8  80 83 00 04 */	lwz r4, 4(r3)
/* 802622BC  28 04 00 00 */	cmplwi r4, 0
/* 802622C0  41 82 00 08 */	beq lbl_802622C8
/* 802622C4  90 64 00 08 */	stw r3, 8(r4)
lbl_802622C8:
/* 802622C8  90 6D 8B BC */	stw r3, mLast__24DynamicModuleControlBase(r13)
/* 802622CC  4E 80 00 20 */	blr 

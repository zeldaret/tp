lbl_80C28838:
/* 80C28838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2883C  7C 08 02 A6 */	mflr r0
/* 80C28840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C28844  A8 05 00 08 */	lha r0, 8(r5)
/* 80C28848  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C2884C  40 82 00 34 */	bne lbl_80C28880
/* 80C28850  C0 44 05 AC */	lfs f2, 0x5ac(r4)
/* 80C28854  3C 60 80 C3 */	lis r3, lit_3674@ha /* 0x80C29248@ha */
/* 80C28858  C0 23 92 48 */	lfs f1, lit_3674@l(r3)  /* 0x80C29248@l */
/* 80C2885C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80C28860  40 80 00 18 */	bge lbl_80C28878
/* 80C28864  3C 60 80 C3 */	lis r3, lit_3847@ha /* 0x80C292AC@ha */
/* 80C28868  C0 03 92 AC */	lfs f0, lit_3847@l(r3)  /* 0x80C292AC@l */
/* 80C2886C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80C28870  D0 04 05 A8 */	stfs f0, 0x5a8(r4)
/* 80C28874  D0 24 05 AC */	stfs f1, 0x5ac(r4)
lbl_80C28878:
/* 80C28878  7C 83 23 78 */	mr r3, r4
/* 80C2887C  4B FF FD F9 */	bl Check_RideOn__10daObjIta_cFv
lbl_80C28880:
/* 80C28880  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C28884  7C 08 03 A6 */	mtlr r0
/* 80C28888  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2888C  4E 80 00 20 */	blr 

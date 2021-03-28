lbl_80A6CD30:
/* 80A6CD30  3C 80 80 A7 */	lis r4, cNullVec__6Z2Calc@ha
/* 80A6CD34  38 C4 FF CC */	addi r6, r4, cNullVec__6Z2Calc@l
/* 80A6CD38  3C 80 80 3A */	lis r4, __ptmf_null@ha
/* 80A6CD3C  38 A4 21 80 */	addi r5, r4, __ptmf_null@l
/* 80A6CD40  80 85 00 00 */	lwz r4, 0(r5)
/* 80A6CD44  80 05 00 04 */	lwz r0, 4(r5)
/* 80A6CD48  90 83 0F A8 */	stw r4, 0xfa8(r3)
/* 80A6CD4C  90 03 0F AC */	stw r0, 0xfac(r3)
/* 80A6CD50  80 05 00 08 */	lwz r0, 8(r5)
/* 80A6CD54  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A6CD58  88 03 0F 8C */	lbz r0, 0xf8c(r3)
/* 80A6CD5C  2C 00 00 05 */	cmpwi r0, 5
/* 80A6CD60  41 82 00 3C */	beq lbl_80A6CD9C
/* 80A6CD64  40 80 00 10 */	bge lbl_80A6CD74
/* 80A6CD68  2C 00 00 04 */	cmpwi r0, 4
/* 80A6CD6C  40 80 00 14 */	bge lbl_80A6CD80
/* 80A6CD70  48 00 00 64 */	b lbl_80A6CDD4
lbl_80A6CD74:
/* 80A6CD74  2C 00 00 07 */	cmpwi r0, 7
/* 80A6CD78  40 80 00 5C */	bge lbl_80A6CDD4
/* 80A6CD7C  48 00 00 3C */	b lbl_80A6CDB8
lbl_80A6CD80:
/* 80A6CD80  80 86 09 94 */	lwz r4, 0x994(r6)
/* 80A6CD84  80 06 09 98 */	lwz r0, 0x998(r6)
/* 80A6CD88  90 83 0F A8 */	stw r4, 0xfa8(r3)
/* 80A6CD8C  90 03 0F AC */	stw r0, 0xfac(r3)
/* 80A6CD90  80 06 09 9C */	lwz r0, 0x99c(r6)
/* 80A6CD94  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A6CD98  48 00 00 54 */	b lbl_80A6CDEC
lbl_80A6CD9C:
/* 80A6CD9C  80 86 09 A0 */	lwz r4, 0x9a0(r6)
/* 80A6CDA0  80 06 09 A4 */	lwz r0, 0x9a4(r6)
/* 80A6CDA4  90 83 0F A8 */	stw r4, 0xfa8(r3)
/* 80A6CDA8  90 03 0F AC */	stw r0, 0xfac(r3)
/* 80A6CDAC  80 06 09 A8 */	lwz r0, 0x9a8(r6)
/* 80A6CDB0  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A6CDB4  48 00 00 38 */	b lbl_80A6CDEC
lbl_80A6CDB8:
/* 80A6CDB8  80 86 09 AC */	lwz r4, 0x9ac(r6)
/* 80A6CDBC  80 06 09 B0 */	lwz r0, 0x9b0(r6)
/* 80A6CDC0  90 83 0F A8 */	stw r4, 0xfa8(r3)
/* 80A6CDC4  90 03 0F AC */	stw r0, 0xfac(r3)
/* 80A6CDC8  80 06 09 B4 */	lwz r0, 0x9b4(r6)
/* 80A6CDCC  90 03 0F B0 */	stw r0, 0xfb0(r3)
/* 80A6CDD0  48 00 00 1C */	b lbl_80A6CDEC
lbl_80A6CDD4:
/* 80A6CDD4  80 86 09 B8 */	lwz r4, 0x9b8(r6)
/* 80A6CDD8  80 06 09 BC */	lwz r0, 0x9bc(r6)
/* 80A6CDDC  90 83 0F A8 */	stw r4, 0xfa8(r3)
/* 80A6CDE0  90 03 0F AC */	stw r0, 0xfac(r3)
/* 80A6CDE4  80 06 09 C0 */	lwz r0, 0x9c0(r6)
/* 80A6CDE8  90 03 0F B0 */	stw r0, 0xfb0(r3)
lbl_80A6CDEC:
/* 80A6CDEC  38 60 00 01 */	li r3, 1
/* 80A6CDF0  4E 80 00 20 */	blr 

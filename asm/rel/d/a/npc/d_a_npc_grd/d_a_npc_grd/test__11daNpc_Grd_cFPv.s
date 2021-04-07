lbl_809D2B20:
/* 809D2B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D2B24  7C 08 02 A6 */	mflr r0
/* 809D2B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D2B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D2B30  7C 7F 1B 78 */	mr r31, r3
/* 809D2B34  A0 03 0E 16 */	lhz r0, 0xe16(r3)
/* 809D2B38  2C 00 00 02 */	cmpwi r0, 2
/* 809D2B3C  41 82 00 38 */	beq lbl_809D2B74
/* 809D2B40  40 80 00 AC */	bge lbl_809D2BEC
/* 809D2B44  2C 00 00 00 */	cmpwi r0, 0
/* 809D2B48  41 82 00 0C */	beq lbl_809D2B54
/* 809D2B4C  48 00 00 A0 */	b lbl_809D2BEC
/* 809D2B50  48 00 00 9C */	b lbl_809D2BEC
lbl_809D2B54:
/* 809D2B54  3C 60 80 9D */	lis r3, lit_4451@ha /* 0x809D3A84@ha */
/* 809D2B58  C0 03 3A 84 */	lfs f0, lit_4451@l(r3)  /* 0x809D3A84@l */
/* 809D2B5C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809D2B60  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809D2B64  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809D2B68  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809D2B6C  38 00 00 02 */	li r0, 2
/* 809D2B70  B0 1F 0E 16 */	sth r0, 0xe16(r31)
lbl_809D2B74:
/* 809D2B74  3C 60 80 9D */	lis r3, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D2B78  38 A3 3A 04 */	addi r5, r3, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D2B7C  A8 85 00 64 */	lha r4, 0x64(r5)
/* 809D2B80  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 809D2B84  7C 04 00 00 */	cmpw r4, r0
/* 809D2B88  41 82 00 1C */	beq lbl_809D2BA4
/* 809D2B8C  7F E3 FB 78 */	mr r3, r31
/* 809D2B90  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809D2B94  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809D2B98  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809D2B9C  7D 89 03 A6 */	mtctr r12
/* 809D2BA0  4E 80 04 21 */	bctrl 
lbl_809D2BA4:
/* 809D2BA4  7F E3 FB 78 */	mr r3, r31
/* 809D2BA8  3C 80 80 9D */	lis r4, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D2BAC  38 A4 3A 04 */	addi r5, r4, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D2BB0  A8 85 00 66 */	lha r4, 0x66(r5)
/* 809D2BB4  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809D2BB8  38 A0 00 00 */	li r5, 0
/* 809D2BBC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809D2BC0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809D2BC4  7D 89 03 A6 */	mtctr r12
/* 809D2BC8  4E 80 04 21 */	bctrl 
/* 809D2BCC  7F E3 FB 78 */	mr r3, r31
/* 809D2BD0  3C 80 80 9D */	lis r4, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D2BD4  38 84 3A 04 */	addi r4, r4, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D2BD8  A8 84 00 68 */	lha r4, 0x68(r4)
/* 809D2BDC  4B FF F8 95 */	bl setLookMode__11daNpc_Grd_cFi
/* 809D2BE0  38 00 00 00 */	li r0, 0
/* 809D2BE4  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809D2BE8  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809D2BEC:
/* 809D2BEC  38 60 00 01 */	li r3, 1
/* 809D2BF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D2BF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D2BF8  7C 08 03 A6 */	mtlr r0
/* 809D2BFC  38 21 00 10 */	addi r1, r1, 0x10
/* 809D2C00  4E 80 00 20 */	blr 

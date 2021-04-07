lbl_80AA8694:
/* 80AA8694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA8698  7C 08 02 A6 */	mflr r0
/* 80AA869C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA86A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA86A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA86A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA86AC  7C 9F 23 78 */	mr r31, r4
/* 80AA86B0  41 82 01 74 */	beq lbl_80AA8824
/* 80AA86B4  3C 60 80 AB */	lis r3, __vt__9daNpcCd_c@ha /* 0x80AA8B74@ha */
/* 80AA86B8  38 03 8B 74 */	addi r0, r3, __vt__9daNpcCd_c@l /* 0x80AA8B74@l */
/* 80AA86BC  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80AA86C0  34 1E 08 88 */	addic. r0, r30, 0x888
/* 80AA86C4  41 82 00 84 */	beq lbl_80AA8748
/* 80AA86C8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AA86CC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AA86D0  90 7E 08 C4 */	stw r3, 0x8c4(r30)
/* 80AA86D4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AA86D8  90 1E 09 A8 */	stw r0, 0x9a8(r30)
/* 80AA86DC  38 03 00 84 */	addi r0, r3, 0x84
/* 80AA86E0  90 1E 09 C0 */	stw r0, 0x9c0(r30)
/* 80AA86E4  34 1E 09 8C */	addic. r0, r30, 0x98c
/* 80AA86E8  41 82 00 54 */	beq lbl_80AA873C
/* 80AA86EC  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AA86F0  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AA86F4  90 7E 09 A8 */	stw r3, 0x9a8(r30)
/* 80AA86F8  38 03 00 58 */	addi r0, r3, 0x58
/* 80AA86FC  90 1E 09 C0 */	stw r0, 0x9c0(r30)
/* 80AA8700  34 1E 09 AC */	addic. r0, r30, 0x9ac
/* 80AA8704  41 82 00 10 */	beq lbl_80AA8714
/* 80AA8708  3C 60 80 AB */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AA8B38@ha */
/* 80AA870C  38 03 8B 38 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AA8B38@l */
/* 80AA8710  90 1E 09 C0 */	stw r0, 0x9c0(r30)
lbl_80AA8714:
/* 80AA8714  34 1E 09 8C */	addic. r0, r30, 0x98c
/* 80AA8718  41 82 00 24 */	beq lbl_80AA873C
/* 80AA871C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AA8720  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AA8724  90 1E 09 A8 */	stw r0, 0x9a8(r30)
/* 80AA8728  34 1E 09 8C */	addic. r0, r30, 0x98c
/* 80AA872C  41 82 00 10 */	beq lbl_80AA873C
/* 80AA8730  3C 60 80 AB */	lis r3, __vt__8cM3dGAab@ha /* 0x80AA8B44@ha */
/* 80AA8734  38 03 8B 44 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AA8B44@l */
/* 80AA8738  90 1E 09 A4 */	stw r0, 0x9a4(r30)
lbl_80AA873C:
/* 80AA873C  38 7E 08 88 */	addi r3, r30, 0x888
/* 80AA8740  38 80 00 00 */	li r4, 0
/* 80AA8744  4B 5D B9 A1 */	bl __dt__12dCcD_GObjInfFv
lbl_80AA8748:
/* 80AA8748  34 1E 08 4C */	addic. r0, r30, 0x84c
/* 80AA874C  41 82 00 54 */	beq lbl_80AA87A0
/* 80AA8750  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AA8754  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AA8758  90 7E 08 64 */	stw r3, 0x864(r30)
/* 80AA875C  38 03 00 20 */	addi r0, r3, 0x20
/* 80AA8760  90 1E 08 68 */	stw r0, 0x868(r30)
/* 80AA8764  34 1E 08 68 */	addic. r0, r30, 0x868
/* 80AA8768  41 82 00 24 */	beq lbl_80AA878C
/* 80AA876C  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AA8B20@ha */
/* 80AA8770  38 03 8B 20 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AA8B20@l */
/* 80AA8774  90 1E 08 68 */	stw r0, 0x868(r30)
/* 80AA8778  34 1E 08 68 */	addic. r0, r30, 0x868
/* 80AA877C  41 82 00 10 */	beq lbl_80AA878C
/* 80AA8780  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AA8B14@ha */
/* 80AA8784  38 03 8B 14 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AA8B14@l */
/* 80AA8788  90 1E 08 68 */	stw r0, 0x868(r30)
lbl_80AA878C:
/* 80AA878C  34 1E 08 4C */	addic. r0, r30, 0x84c
/* 80AA8790  41 82 00 10 */	beq lbl_80AA87A0
/* 80AA8794  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AA8798  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AA879C  90 1E 08 64 */	stw r0, 0x864(r30)
lbl_80AA87A0:
/* 80AA87A0  34 1E 08 0C */	addic. r0, r30, 0x80c
/* 80AA87A4  41 82 00 28 */	beq lbl_80AA87CC
/* 80AA87A8  3C 60 80 AB */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AA8B08@ha */
/* 80AA87AC  38 03 8B 08 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AA8B08@l */
/* 80AA87B0  90 1E 08 18 */	stw r0, 0x818(r30)
/* 80AA87B4  38 7E 08 20 */	addi r3, r30, 0x820
/* 80AA87B8  38 80 FF FF */	li r4, -1
/* 80AA87BC  4B 7C 67 5D */	bl __dt__8cM3dGCirFv
/* 80AA87C0  38 7E 08 0C */	addi r3, r30, 0x80c
/* 80AA87C4  38 80 00 00 */	li r4, 0
/* 80AA87C8  4B 7B F8 E9 */	bl __dt__13cBgS_PolyInfoFv
lbl_80AA87CC:
/* 80AA87CC  34 1E 06 34 */	addic. r0, r30, 0x634
/* 80AA87D0  41 82 00 2C */	beq lbl_80AA87FC
/* 80AA87D4  3C 60 80 AB */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AA8B50@ha */
/* 80AA87D8  38 63 8B 50 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AA8B50@l */
/* 80AA87DC  90 7E 06 44 */	stw r3, 0x644(r30)
/* 80AA87E0  38 03 00 0C */	addi r0, r3, 0xc
/* 80AA87E4  90 1E 06 48 */	stw r0, 0x648(r30)
/* 80AA87E8  38 03 00 18 */	addi r0, r3, 0x18
/* 80AA87EC  90 1E 06 58 */	stw r0, 0x658(r30)
/* 80AA87F0  38 7E 06 34 */	addi r3, r30, 0x634
/* 80AA87F4  38 80 00 00 */	li r4, 0
/* 80AA87F8  4B 5C D7 9D */	bl __dt__9dBgS_AcchFv
lbl_80AA87FC:
/* 80AA87FC  38 7E 05 90 */	addi r3, r30, 0x590
/* 80AA8800  38 80 FF FF */	li r4, -1
/* 80AA8804  4B 81 84 69 */	bl __dt__17Z2CreatureCitizenFv
/* 80AA8808  7F C3 F3 78 */	mr r3, r30
/* 80AA880C  38 80 00 00 */	li r4, 0
/* 80AA8810  4B 57 04 7D */	bl __dt__10fopAc_ac_cFv
/* 80AA8814  7F E0 07 35 */	extsh. r0, r31
/* 80AA8818  40 81 00 0C */	ble lbl_80AA8824
/* 80AA881C  7F C3 F3 78 */	mr r3, r30
/* 80AA8820  4B 82 65 1D */	bl __dl__FPv
lbl_80AA8824:
/* 80AA8824  7F C3 F3 78 */	mr r3, r30
/* 80AA8828  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA882C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA8830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA8834  7C 08 03 A6 */	mtlr r0
/* 80AA8838  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA883C  4E 80 00 20 */	blr 

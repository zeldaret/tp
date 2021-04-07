lbl_80265BB4:
/* 80265BB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80265BB8  7C 08 02 A6 */	mflr r0
/* 80265BBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80265BC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80265BC4  48 0F C6 19 */	bl _savegpr_29
/* 80265BC8  7C 7F 1B 78 */	mr r31, r3
/* 80265BCC  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 80265BD0  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 80265BD4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80265BD8  38 61 00 08 */	addi r3, r1, 8
/* 80265BDC  48 00 91 1D */	bl ClearForMinMax__8cM3dGAabFv
/* 80265BE0  3B DF 14 00 */	addi r30, r31, 0x1400
/* 80265BE4  48 00 00 44 */	b lbl_80265C28
lbl_80265BE8:
/* 80265BE8  80 7E 00 00 */	lwz r3, 0(r30)
/* 80265BEC  28 03 00 00 */	cmplwi r3, 0
/* 80265BF0  41 82 00 34 */	beq lbl_80265C24
/* 80265BF4  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80265BF8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80265BFC  7D 89 03 A6 */	mtctr r12
/* 80265C00  4E 80 04 21 */	bctrl 
/* 80265C04  7C 7D 1B 78 */	mr r29, r3
/* 80265C08  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 80265C0C  81 8C 00 4C */	lwz r12, 0x4c(r12)
/* 80265C10  7D 89 03 A6 */	mtctr r12
/* 80265C14  4E 80 04 21 */	bctrl 
/* 80265C18  38 61 00 08 */	addi r3, r1, 8
/* 80265C1C  7F A4 EB 78 */	mr r4, r29
/* 80265C20  48 00 91 41 */	bl SetMinMax__8cM3dGAabFRC8cM3dGAab
lbl_80265C24:
/* 80265C24  3B DE 00 04 */	addi r30, r30, 4
lbl_80265C28:
/* 80265C28  A0 1F 28 06 */	lhz r0, 0x2806(r31)
/* 80265C2C  54 03 10 3A */	slwi r3, r0, 2
/* 80265C30  38 03 14 00 */	addi r0, r3, 0x1400
/* 80265C34  7C 1F 02 14 */	add r0, r31, r0
/* 80265C38  7C 1E 00 40 */	cmplw r30, r0
/* 80265C3C  41 80 FF AC */	blt lbl_80265BE8
/* 80265C40  38 7F 28 08 */	addi r3, r31, 0x2808
/* 80265C44  38 81 00 08 */	addi r4, r1, 8
/* 80265C48  4B FF D7 61 */	bl SetArea__15cCcD_DivideAreaFRC8cM3dGAab
/* 80265C4C  3B BF 14 00 */	addi r29, r31, 0x1400
/* 80265C50  48 00 00 40 */	b lbl_80265C90
lbl_80265C54:
/* 80265C54  80 7D 00 00 */	lwz r3, 0(r29)
/* 80265C58  28 03 00 00 */	cmplwi r3, 0
/* 80265C5C  41 82 00 30 */	beq lbl_80265C8C
/* 80265C60  81 83 00 3C */	lwz r12, 0x3c(r3)
/* 80265C64  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80265C68  7D 89 03 A6 */	mtctr r12
/* 80265C6C  4E 80 04 21 */	bctrl 
/* 80265C70  7C 65 1B 78 */	mr r5, r3
/* 80265C74  80 7D 00 00 */	lwz r3, 0(r29)
/* 80265C78  38 83 00 48 */	addi r4, r3, 0x48
/* 80265C7C  80 03 00 40 */	lwz r0, 0x40(r3)
/* 80265C80  54 06 07 BC */	rlwinm r6, r0, 0, 0x1e, 0x1e
/* 80265C84  38 7F 28 08 */	addi r3, r31, 0x2808
/* 80265C88  4B FF D8 4D */	bl CalcDivideInfo__15cCcD_DivideAreaFP15cCcD_DivideInfoRC8cM3dGAabUl
lbl_80265C8C:
/* 80265C8C  3B BD 00 04 */	addi r29, r29, 4
lbl_80265C90:
/* 80265C90  A0 1F 28 06 */	lhz r0, 0x2806(r31)
/* 80265C94  54 03 10 3A */	slwi r3, r0, 2
/* 80265C98  38 03 14 00 */	addi r0, r3, 0x1400
/* 80265C9C  7C 1F 02 14 */	add r0, r31, r0
/* 80265CA0  7C 1D 00 40 */	cmplw r29, r0
/* 80265CA4  41 80 FF B0 */	blt lbl_80265C54
/* 80265CA8  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 80265CAC  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 80265CB0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80265CB4  39 61 00 40 */	addi r11, r1, 0x40
/* 80265CB8  48 0F C5 71 */	bl _restgpr_29
/* 80265CBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80265CC0  7C 08 03 A6 */	mtlr r0
/* 80265CC4  38 21 00 40 */	addi r1, r1, 0x40
/* 80265CC8  4E 80 00 20 */	blr 

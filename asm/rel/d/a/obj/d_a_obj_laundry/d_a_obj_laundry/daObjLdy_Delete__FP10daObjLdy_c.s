lbl_80C51BE4:
/* 80C51BE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C51BE8  7C 08 02 A6 */	mflr r0
/* 80C51BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51BF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51BF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C51BF8  41 82 01 1C */	beq lbl_80C51D14
/* 80C51BFC  38 7F 05 70 */	addi r3, r31, 0x570
/* 80C51C00  3C 80 80 C5 */	lis r4, l_arcName@ha /* 0x80C520F0@ha */
/* 80C51C04  38 84 20 F0 */	addi r4, r4, l_arcName@l /* 0x80C520F0@l */
/* 80C51C08  80 84 00 00 */	lwz r4, 0(r4)
/* 80C51C0C  4B 3D B3 FD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80C51C10  38 7F 07 20 */	addi r3, r31, 0x720
/* 80C51C14  3C 80 80 C5 */	lis r4, __dt__12LaundJoint_cFv@ha /* 0x80C51D2C@ha */
/* 80C51C18  38 84 1D 2C */	addi r4, r4, __dt__12LaundJoint_cFv@l /* 0x80C51D2C@l */
/* 80C51C1C  38 A0 00 38 */	li r5, 0x38
/* 80C51C20  38 C0 00 03 */	li r6, 3
/* 80C51C24  4B 71 00 C5 */	bl __destroy_arr
/* 80C51C28  34 1F 05 E4 */	addic. r0, r31, 0x5e4
/* 80C51C2C  41 82 00 84 */	beq lbl_80C51CB0
/* 80C51C30  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80C51C34  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80C51C38  90 7F 06 20 */	stw r3, 0x620(r31)
/* 80C51C3C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C51C40  90 1F 07 04 */	stw r0, 0x704(r31)
/* 80C51C44  38 03 00 84 */	addi r0, r3, 0x84
/* 80C51C48  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 80C51C4C  34 1F 06 E8 */	addic. r0, r31, 0x6e8
/* 80C51C50  41 82 00 54 */	beq lbl_80C51CA4
/* 80C51C54  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80C51C58  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80C51C5C  90 7F 07 04 */	stw r3, 0x704(r31)
/* 80C51C60  38 03 00 58 */	addi r0, r3, 0x58
/* 80C51C64  90 1F 07 1C */	stw r0, 0x71c(r31)
/* 80C51C68  34 1F 07 08 */	addic. r0, r31, 0x708
/* 80C51C6C  41 82 00 10 */	beq lbl_80C51C7C
/* 80C51C70  3C 60 80 C5 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80C52168@ha */
/* 80C51C74  38 03 21 68 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80C52168@l */
/* 80C51C78  90 1F 07 1C */	stw r0, 0x71c(r31)
lbl_80C51C7C:
/* 80C51C7C  34 1F 06 E8 */	addic. r0, r31, 0x6e8
/* 80C51C80  41 82 00 24 */	beq lbl_80C51CA4
/* 80C51C84  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80C51C88  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80C51C8C  90 1F 07 04 */	stw r0, 0x704(r31)
/* 80C51C90  34 1F 06 E8 */	addic. r0, r31, 0x6e8
/* 80C51C94  41 82 00 10 */	beq lbl_80C51CA4
/* 80C51C98  3C 60 80 C5 */	lis r3, __vt__8cM3dGAab@ha /* 0x80C5215C@ha */
/* 80C51C9C  38 03 21 5C */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80C5215C@l */
/* 80C51CA0  90 1F 07 00 */	stw r0, 0x700(r31)
lbl_80C51CA4:
/* 80C51CA4  38 7F 05 E4 */	addi r3, r31, 0x5e4
/* 80C51CA8  38 80 00 00 */	li r4, 0
/* 80C51CAC  4B 43 24 39 */	bl __dt__12dCcD_GObjInfFv
lbl_80C51CB0:
/* 80C51CB0  34 1F 05 A8 */	addic. r0, r31, 0x5a8
/* 80C51CB4  41 82 00 54 */	beq lbl_80C51D08
/* 80C51CB8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80C51CBC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80C51CC0  90 7F 05 C0 */	stw r3, 0x5c0(r31)
/* 80C51CC4  38 03 00 20 */	addi r0, r3, 0x20
/* 80C51CC8  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 80C51CCC  34 1F 05 C4 */	addic. r0, r31, 0x5c4
/* 80C51CD0  41 82 00 24 */	beq lbl_80C51CF4
/* 80C51CD4  3C 60 80 C5 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C52150@ha */
/* 80C51CD8  38 03 21 50 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C52150@l */
/* 80C51CDC  90 1F 05 C4 */	stw r0, 0x5c4(r31)
/* 80C51CE0  34 1F 05 C4 */	addic. r0, r31, 0x5c4
/* 80C51CE4  41 82 00 10 */	beq lbl_80C51CF4
/* 80C51CE8  3C 60 80 C5 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C52144@ha */
/* 80C51CEC  38 03 21 44 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C52144@l */
/* 80C51CF0  90 1F 05 C4 */	stw r0, 0x5c4(r31)
lbl_80C51CF4:
/* 80C51CF4  34 1F 05 A8 */	addic. r0, r31, 0x5a8
/* 80C51CF8  41 82 00 10 */	beq lbl_80C51D08
/* 80C51CFC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80C51D00  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80C51D04  90 1F 05 C0 */	stw r0, 0x5c0(r31)
lbl_80C51D08:
/* 80C51D08  7F E3 FB 78 */	mr r3, r31
/* 80C51D0C  38 80 00 00 */	li r4, 0
/* 80C51D10  4B 3C 6F 7D */	bl __dt__10fopAc_ac_cFv
lbl_80C51D14:
/* 80C51D14  38 60 00 01 */	li r3, 1
/* 80C51D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C51D1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51D20  7C 08 03 A6 */	mtlr r0
/* 80C51D24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51D28  4E 80 00 20 */	blr 

lbl_8065809C:
/* 8065809C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806580A0  7C 08 02 A6 */	mflr r0
/* 806580A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 806580A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806580AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 806580B0  41 82 00 F8 */	beq lbl_806581A8
/* 806580B4  38 7F 05 68 */	addi r3, r31, 0x568
/* 806580B8  4B B4 F8 75 */	bl dKy_plight_cut__FP15LIGHT_INFLUENCE
/* 806580BC  34 1F 05 C4 */	addic. r0, r31, 0x5c4
/* 806580C0  41 82 00 84 */	beq lbl_80658144
/* 806580C4  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 806580C8  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 806580CC  90 7F 06 00 */	stw r3, 0x600(r31)
/* 806580D0  38 03 00 2C */	addi r0, r3, 0x2c
/* 806580D4  90 1F 06 E4 */	stw r0, 0x6e4(r31)
/* 806580D8  38 03 00 84 */	addi r0, r3, 0x84
/* 806580DC  90 1F 06 F8 */	stw r0, 0x6f8(r31)
/* 806580E0  34 1F 06 C8 */	addic. r0, r31, 0x6c8
/* 806580E4  41 82 00 54 */	beq lbl_80658138
/* 806580E8  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 806580EC  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 806580F0  90 7F 06 E4 */	stw r3, 0x6e4(r31)
/* 806580F4  38 03 00 58 */	addi r0, r3, 0x58
/* 806580F8  90 1F 06 F8 */	stw r0, 0x6f8(r31)
/* 806580FC  34 1F 06 E8 */	addic. r0, r31, 0x6e8
/* 80658100  41 82 00 10 */	beq lbl_80658110
/* 80658104  3C 60 80 66 */	lis r3, __vt__8cM3dGSph@ha /* 0x806584D0@ha */
/* 80658108  38 03 84 D0 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x806584D0@l */
/* 8065810C  90 1F 06 F8 */	stw r0, 0x6f8(r31)
lbl_80658110:
/* 80658110  34 1F 06 C8 */	addic. r0, r31, 0x6c8
/* 80658114  41 82 00 24 */	beq lbl_80658138
/* 80658118  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8065811C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80658120  90 1F 06 E4 */	stw r0, 0x6e4(r31)
/* 80658124  34 1F 06 C8 */	addic. r0, r31, 0x6c8
/* 80658128  41 82 00 10 */	beq lbl_80658138
/* 8065812C  3C 60 80 66 */	lis r3, __vt__8cM3dGAab@ha /* 0x806584C4@ha */
/* 80658130  38 03 84 C4 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x806584C4@l */
/* 80658134  90 1F 06 E0 */	stw r0, 0x6e0(r31)
lbl_80658138:
/* 80658138  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 8065813C  38 80 00 00 */	li r4, 0
/* 80658140  4B A2 BF A5 */	bl __dt__12dCcD_GObjInfFv
lbl_80658144:
/* 80658144  34 1F 05 88 */	addic. r0, r31, 0x588
/* 80658148  41 82 00 54 */	beq lbl_8065819C
/* 8065814C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80658150  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80658154  90 7F 05 A0 */	stw r3, 0x5a0(r31)
/* 80658158  38 03 00 20 */	addi r0, r3, 0x20
/* 8065815C  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80658160  34 1F 05 A4 */	addic. r0, r31, 0x5a4
/* 80658164  41 82 00 24 */	beq lbl_80658188
/* 80658168  3C 60 80 66 */	lis r3, __vt__10dCcD_GStts@ha /* 0x806584B8@ha */
/* 8065816C  38 03 84 B8 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x806584B8@l */
/* 80658170  90 1F 05 A4 */	stw r0, 0x5a4(r31)
/* 80658174  34 1F 05 A4 */	addic. r0, r31, 0x5a4
/* 80658178  41 82 00 10 */	beq lbl_80658188
/* 8065817C  3C 60 80 66 */	lis r3, __vt__10cCcD_GStts@ha /* 0x806584AC@ha */
/* 80658180  38 03 84 AC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x806584AC@l */
/* 80658184  90 1F 05 A4 */	stw r0, 0x5a4(r31)
lbl_80658188:
/* 80658188  34 1F 05 88 */	addic. r0, r31, 0x588
/* 8065818C  41 82 00 10 */	beq lbl_8065819C
/* 80658190  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80658194  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80658198  90 1F 05 A0 */	stw r0, 0x5a0(r31)
lbl_8065819C:
/* 8065819C  7F E3 FB 78 */	mr r3, r31
/* 806581A0  38 80 00 00 */	li r4, 0
/* 806581A4  4B 9C 0A E9 */	bl __dt__10fopAc_ac_cFv
lbl_806581A8:
/* 806581A8  38 60 00 01 */	li r3, 1
/* 806581AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806581B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806581B4  7C 08 03 A6 */	mtlr r0
/* 806581B8  38 21 00 10 */	addi r1, r1, 0x10
/* 806581BC  4E 80 00 20 */	blr 

lbl_80BCD524:
/* 80BCD524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BCD528  7C 08 02 A6 */	mflr r0
/* 80BCD52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BCD530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BCD534  93 C1 00 08 */	stw r30, 8(r1)
/* 80BCD538  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BCD53C  7C 9F 23 78 */	mr r31, r4
/* 80BCD540  41 82 01 40 */	beq lbl_80BCD680
/* 80BCD544  38 7E 05 68 */	addi r3, r30, 0x568
/* 80BCD548  3C 80 80 BD */	lis r4, l_arcName@ha
/* 80BCD54C  38 84 EA CC */	addi r4, r4, l_arcName@l
/* 80BCD550  4B 45 FA B8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BCD554  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80BCD558  3C 80 80 BD */	lis r4, __dt__4cXyzFv@ha
/* 80BCD55C  38 84 D4 C8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80BCD560  38 A0 00 0C */	li r5, 0xc
/* 80BCD564  38 C0 00 62 */	li r6, 0x62
/* 80BCD568  4B 79 47 80 */	b __destroy_arr
/* 80BCD56C  38 7E 07 40 */	addi r3, r30, 0x740
/* 80BCD570  3C 80 80 BD */	lis r4, __dt__4cXyzFv@ha
/* 80BCD574  38 84 D4 C8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80BCD578  38 A0 00 0C */	li r5, 0xc
/* 80BCD57C  38 C0 00 62 */	li r6, 0x62
/* 80BCD580  4B 79 47 68 */	b __destroy_arr
/* 80BCD584  34 1E 05 AC */	addic. r0, r30, 0x5ac
/* 80BCD588  41 82 00 84 */	beq lbl_80BCD60C
/* 80BCD58C  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BCD590  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BCD594  90 7E 05 E8 */	stw r3, 0x5e8(r30)
/* 80BCD598  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BCD59C  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 80BCD5A0  38 03 00 84 */	addi r0, r3, 0x84
/* 80BCD5A4  90 1E 06 E0 */	stw r0, 0x6e0(r30)
/* 80BCD5A8  34 1E 06 B0 */	addic. r0, r30, 0x6b0
/* 80BCD5AC  41 82 00 54 */	beq lbl_80BCD600
/* 80BCD5B0  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BCD5B4  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BCD5B8  90 7E 06 CC */	stw r3, 0x6cc(r30)
/* 80BCD5BC  38 03 00 58 */	addi r0, r3, 0x58
/* 80BCD5C0  90 1E 06 E0 */	stw r0, 0x6e0(r30)
/* 80BCD5C4  34 1E 06 D0 */	addic. r0, r30, 0x6d0
/* 80BCD5C8  41 82 00 10 */	beq lbl_80BCD5D8
/* 80BCD5CC  3C 60 80 BD */	lis r3, __vt__8cM3dGSph@ha
/* 80BCD5D0  38 03 EC 08 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BCD5D4  90 1E 06 E0 */	stw r0, 0x6e0(r30)
lbl_80BCD5D8:
/* 80BCD5D8  34 1E 06 B0 */	addic. r0, r30, 0x6b0
/* 80BCD5DC  41 82 00 24 */	beq lbl_80BCD600
/* 80BCD5E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BCD5E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BCD5E8  90 1E 06 CC */	stw r0, 0x6cc(r30)
/* 80BCD5EC  34 1E 06 B0 */	addic. r0, r30, 0x6b0
/* 80BCD5F0  41 82 00 10 */	beq lbl_80BCD600
/* 80BCD5F4  3C 60 80 BD */	lis r3, __vt__8cM3dGAab@ha
/* 80BCD5F8  38 03 EC 14 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BCD5FC  90 1E 06 C8 */	stw r0, 0x6c8(r30)
lbl_80BCD600:
/* 80BCD600  38 7E 05 AC */	addi r3, r30, 0x5ac
/* 80BCD604  38 80 00 00 */	li r4, 0
/* 80BCD608  4B 4B 6A DC */	b __dt__12dCcD_GObjInfFv
lbl_80BCD60C:
/* 80BCD60C  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80BCD610  41 82 00 54 */	beq lbl_80BCD664
/* 80BCD614  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BCD618  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BCD61C  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80BCD620  38 03 00 20 */	addi r0, r3, 0x20
/* 80BCD624  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80BCD628  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80BCD62C  41 82 00 24 */	beq lbl_80BCD650
/* 80BCD630  3C 60 80 BD */	lis r3, __vt__10dCcD_GStts@ha
/* 80BCD634  38 03 EB E8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BCD638  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80BCD63C  34 1E 05 8C */	addic. r0, r30, 0x58c
/* 80BCD640  41 82 00 10 */	beq lbl_80BCD650
/* 80BCD644  3C 60 80 BD */	lis r3, __vt__10cCcD_GStts@ha
/* 80BCD648  38 03 EB DC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BCD64C  90 1E 05 8C */	stw r0, 0x58c(r30)
lbl_80BCD650:
/* 80BCD650  34 1E 05 70 */	addic. r0, r30, 0x570
/* 80BCD654  41 82 00 10 */	beq lbl_80BCD664
/* 80BCD658  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BCD65C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BCD660  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80BCD664:
/* 80BCD664  7F C3 F3 78 */	mr r3, r30
/* 80BCD668  38 80 00 00 */	li r4, 0
/* 80BCD66C  4B 44 B6 20 */	b __dt__10fopAc_ac_cFv
/* 80BCD670  7F E0 07 35 */	extsh. r0, r31
/* 80BCD674  40 81 00 0C */	ble lbl_80BCD680
/* 80BCD678  7F C3 F3 78 */	mr r3, r30
/* 80BCD67C  4B 70 16 C0 */	b __dl__FPv
lbl_80BCD680:
/* 80BCD680  7F C3 F3 78 */	mr r3, r30
/* 80BCD684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BCD688  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BCD68C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BCD690  7C 08 03 A6 */	mtlr r0
/* 80BCD694  38 21 00 10 */	addi r1, r1, 0x10
/* 80BCD698  4E 80 00 20 */	blr 

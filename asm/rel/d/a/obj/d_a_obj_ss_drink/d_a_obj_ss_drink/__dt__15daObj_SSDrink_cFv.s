lbl_80CE4F78:
/* 80CE4F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE4F7C  7C 08 02 A6 */	mflr r0
/* 80CE4F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE4F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE4F88  93 C1 00 08 */	stw r30, 8(r1)
/* 80CE4F8C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CE4F90  7C 9F 23 78 */	mr r31, r4
/* 80CE4F94  41 82 02 18 */	beq lbl_80CE51AC
/* 80CE4F98  3C 80 80 CE */	lis r4, __vt__15daObj_SSDrink_c@ha
/* 80CE4F9C  38 04 6B 70 */	addi r0, r4, __vt__15daObj_SSDrink_c@l
/* 80CE4FA0  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CE4FA4  48 00 0A AD */	bl getResName__15daObj_SSDrink_cFv
/* 80CE4FA8  7C 64 1B 78 */	mr r4, r3
/* 80CE4FAC  38 7E 05 84 */	addi r3, r30, 0x584
/* 80CE4FB0  4B 34 80 58 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CE4FB4  38 7E 0A A4 */	addi r3, r30, 0xaa4
/* 80CE4FB8  38 80 FF FF */	li r4, -1
/* 80CE4FBC  4B 56 4F 8C */	b __dt__10dMsgFlow_cFv
/* 80CE4FC0  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 80CE4FC4  38 80 FF FF */	li r4, -1
/* 80CE4FC8  4B 58 2C CC */	b __dt__11cBgS_GndChkFv
/* 80CE4FCC  34 1E 09 20 */	addic. r0, r30, 0x920
/* 80CE4FD0  41 82 00 84 */	beq lbl_80CE5054
/* 80CE4FD4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CE4FD8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CE4FDC  90 7E 09 5C */	stw r3, 0x95c(r30)
/* 80CE4FE0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CE4FE4  90 1E 0A 40 */	stw r0, 0xa40(r30)
/* 80CE4FE8  38 03 00 84 */	addi r0, r3, 0x84
/* 80CE4FEC  90 1E 0A 58 */	stw r0, 0xa58(r30)
/* 80CE4FF0  34 1E 0A 24 */	addic. r0, r30, 0xa24
/* 80CE4FF4  41 82 00 54 */	beq lbl_80CE5048
/* 80CE4FF8  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CE4FFC  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CE5000  90 7E 0A 40 */	stw r3, 0xa40(r30)
/* 80CE5004  38 03 00 58 */	addi r0, r3, 0x58
/* 80CE5008  90 1E 0A 58 */	stw r0, 0xa58(r30)
/* 80CE500C  34 1E 0A 44 */	addic. r0, r30, 0xa44
/* 80CE5010  41 82 00 10 */	beq lbl_80CE5020
/* 80CE5014  3C 60 80 CE */	lis r3, __vt__8cM3dGCyl@ha
/* 80CE5018  38 03 6B 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CE501C  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80CE5020:
/* 80CE5020  34 1E 0A 24 */	addic. r0, r30, 0xa24
/* 80CE5024  41 82 00 24 */	beq lbl_80CE5048
/* 80CE5028  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CE502C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CE5030  90 1E 0A 40 */	stw r0, 0xa40(r30)
/* 80CE5034  34 1E 0A 24 */	addic. r0, r30, 0xa24
/* 80CE5038  41 82 00 10 */	beq lbl_80CE5048
/* 80CE503C  3C 60 80 CE */	lis r3, __vt__8cM3dGAab@ha
/* 80CE5040  38 03 6B 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CE5044  90 1E 0A 3C */	stw r0, 0xa3c(r30)
lbl_80CE5048:
/* 80CE5048  38 7E 09 20 */	addi r3, r30, 0x920
/* 80CE504C  38 80 00 00 */	li r4, 0
/* 80CE5050  4B 39 F0 94 */	b __dt__12dCcD_GObjInfFv
lbl_80CE5054:
/* 80CE5054  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80CE5058  41 82 00 84 */	beq lbl_80CE50DC
/* 80CE505C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CE5060  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CE5064  90 7E 08 20 */	stw r3, 0x820(r30)
/* 80CE5068  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CE506C  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80CE5070  38 03 00 84 */	addi r0, r3, 0x84
/* 80CE5074  90 1E 09 1C */	stw r0, 0x91c(r30)
/* 80CE5078  34 1E 08 E8 */	addic. r0, r30, 0x8e8
/* 80CE507C  41 82 00 54 */	beq lbl_80CE50D0
/* 80CE5080  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CE5084  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CE5088  90 7E 09 04 */	stw r3, 0x904(r30)
/* 80CE508C  38 03 00 58 */	addi r0, r3, 0x58
/* 80CE5090  90 1E 09 1C */	stw r0, 0x91c(r30)
/* 80CE5094  34 1E 09 08 */	addic. r0, r30, 0x908
/* 80CE5098  41 82 00 10 */	beq lbl_80CE50A8
/* 80CE509C  3C 60 80 CE */	lis r3, __vt__8cM3dGCyl@ha
/* 80CE50A0  38 03 6B 64 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CE50A4  90 1E 09 1C */	stw r0, 0x91c(r30)
lbl_80CE50A8:
/* 80CE50A8  34 1E 08 E8 */	addic. r0, r30, 0x8e8
/* 80CE50AC  41 82 00 24 */	beq lbl_80CE50D0
/* 80CE50B0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CE50B4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CE50B8  90 1E 09 04 */	stw r0, 0x904(r30)
/* 80CE50BC  34 1E 08 E8 */	addic. r0, r30, 0x8e8
/* 80CE50C0  41 82 00 10 */	beq lbl_80CE50D0
/* 80CE50C4  3C 60 80 CE */	lis r3, __vt__8cM3dGAab@ha
/* 80CE50C8  38 03 6B 58 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CE50CC  90 1E 09 00 */	stw r0, 0x900(r30)
lbl_80CE50D0:
/* 80CE50D0  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80CE50D4  38 80 00 00 */	li r4, 0
/* 80CE50D8  4B 39 F0 0C */	b __dt__12dCcD_GObjInfFv
lbl_80CE50DC:
/* 80CE50DC  34 1E 07 A4 */	addic. r0, r30, 0x7a4
/* 80CE50E0  41 82 00 28 */	beq lbl_80CE5108
/* 80CE50E4  3C 60 80 CE */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CE50E8  38 03 6B 4C */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CE50EC  90 1E 07 B0 */	stw r0, 0x7b0(r30)
/* 80CE50F0  38 7E 07 B8 */	addi r3, r30, 0x7b8
/* 80CE50F4  38 80 FF FF */	li r4, -1
/* 80CE50F8  4B 58 9E 20 */	b __dt__8cM3dGCirFv
/* 80CE50FC  38 7E 07 A4 */	addi r3, r30, 0x7a4
/* 80CE5100  38 80 00 00 */	li r4, 0
/* 80CE5104  4B 58 2F AC */	b __dt__13cBgS_PolyInfoFv
lbl_80CE5108:
/* 80CE5108  34 1E 07 68 */	addic. r0, r30, 0x768
/* 80CE510C  41 82 00 54 */	beq lbl_80CE5160
/* 80CE5110  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CE5114  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CE5118  90 7E 07 80 */	stw r3, 0x780(r30)
/* 80CE511C  38 03 00 20 */	addi r0, r3, 0x20
/* 80CE5120  90 1E 07 84 */	stw r0, 0x784(r30)
/* 80CE5124  34 1E 07 84 */	addic. r0, r30, 0x784
/* 80CE5128  41 82 00 24 */	beq lbl_80CE514C
/* 80CE512C  3C 60 80 CE */	lis r3, __vt__10dCcD_GStts@ha
/* 80CE5130  38 03 6B 40 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CE5134  90 1E 07 84 */	stw r0, 0x784(r30)
/* 80CE5138  34 1E 07 84 */	addic. r0, r30, 0x784
/* 80CE513C  41 82 00 10 */	beq lbl_80CE514C
/* 80CE5140  3C 60 80 CE */	lis r3, __vt__10cCcD_GStts@ha
/* 80CE5144  38 03 6B 34 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CE5148  90 1E 07 84 */	stw r0, 0x784(r30)
lbl_80CE514C:
/* 80CE514C  34 1E 07 68 */	addic. r0, r30, 0x768
/* 80CE5150  41 82 00 10 */	beq lbl_80CE5160
/* 80CE5154  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CE5158  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CE515C  90 1E 07 80 */	stw r0, 0x780(r30)
lbl_80CE5160:
/* 80CE5160  34 1E 05 90 */	addic. r0, r30, 0x590
/* 80CE5164  41 82 00 2C */	beq lbl_80CE5190
/* 80CE5168  3C 60 80 CE */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CE516C  38 63 6B 10 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CE5170  90 7E 05 A0 */	stw r3, 0x5a0(r30)
/* 80CE5174  38 03 00 0C */	addi r0, r3, 0xc
/* 80CE5178  90 1E 05 A4 */	stw r0, 0x5a4(r30)
/* 80CE517C  38 03 00 18 */	addi r0, r3, 0x18
/* 80CE5180  90 1E 05 B4 */	stw r0, 0x5b4(r30)
/* 80CE5184  38 7E 05 90 */	addi r3, r30, 0x590
/* 80CE5188  38 80 00 00 */	li r4, 0
/* 80CE518C  4B 39 0E 08 */	b __dt__9dBgS_AcchFv
lbl_80CE5190:
/* 80CE5190  7F C3 F3 78 */	mr r3, r30
/* 80CE5194  38 80 00 00 */	li r4, 0
/* 80CE5198  4B 47 92 B8 */	b __dt__14daObj_SSBase_cFv
/* 80CE519C  7F E0 07 35 */	extsh. r0, r31
/* 80CE51A0  40 81 00 0C */	ble lbl_80CE51AC
/* 80CE51A4  7F C3 F3 78 */	mr r3, r30
/* 80CE51A8  4B 5E 9B 94 */	b __dl__FPv
lbl_80CE51AC:
/* 80CE51AC  7F C3 F3 78 */	mr r3, r30
/* 80CE51B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE51B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CE51B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE51BC  7C 08 03 A6 */	mtlr r0
/* 80CE51C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE51C4  4E 80 00 20 */	blr 

lbl_80A57ED4:
/* 80A57ED4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A57ED8  7C 08 02 A6 */	mflr r0
/* 80A57EDC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A57EE0  39 61 00 30 */	addi r11, r1, 0x30
/* 80A57EE4  4B 90 A2 F4 */	b _savegpr_28
/* 80A57EE8  7C 7C 1B 78 */	mr r28, r3
/* 80A57EEC  3C 80 80 A6 */	lis r4, lit_4030@ha
/* 80A57EF0  3B E4 DE FC */	addi r31, r4, lit_4030@l
/* 80A57EF4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80A57EF8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80A57EFC  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80A57F00  3B A0 00 01 */	li r29, 1
/* 80A57F04  A8 03 05 EA */	lha r0, 0x5ea(r3)
/* 80A57F08  2C 00 00 05 */	cmpwi r0, 5
/* 80A57F0C  41 82 01 70 */	beq lbl_80A5807C
/* 80A57F10  40 80 00 1C */	bge lbl_80A57F2C
/* 80A57F14  2C 00 00 01 */	cmpwi r0, 1
/* 80A57F18  41 82 00 4C */	beq lbl_80A57F64
/* 80A57F1C  40 80 02 90 */	bge lbl_80A581AC
/* 80A57F20  2C 00 00 00 */	cmpwi r0, 0
/* 80A57F24  40 80 00 14 */	bge lbl_80A57F38
/* 80A57F28  48 00 02 84 */	b lbl_80A581AC
lbl_80A57F2C:
/* 80A57F2C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A57F30  41 82 01 C8 */	beq lbl_80A580F8
/* 80A57F34  48 00 02 78 */	b lbl_80A581AC
lbl_80A57F38:
/* 80A57F38  38 80 00 1A */	li r4, 0x1a
/* 80A57F3C  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A57F40  38 A0 00 02 */	li r5, 2
/* 80A57F44  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57F48  4B FF 12 5D */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57F4C  38 00 00 01 */	li r0, 1
/* 80A57F50  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80A57F54  38 00 00 00 */	li r0, 0
/* 80A57F58  90 1C 09 04 */	stw r0, 0x904(r28)
/* 80A57F5C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A57F60  D0 1C 05 2C */	stfs f0, 0x52c(r28)
lbl_80A57F64:
/* 80A57F64  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80A57F68  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A57F6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A57F70  40 81 00 9C */	ble lbl_80A5800C
/* 80A57F74  C0 3C 05 C4 */	lfs f1, 0x5c4(r28)
/* 80A57F78  C0 1F 03 FC */	lfs f0, 0x3fc(r31)
/* 80A57F7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A57F80  41 81 00 20 */	bgt lbl_80A57FA0
/* 80A57F84  80 1C 09 04 */	lwz r0, 0x904(r28)
/* 80A57F88  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A57F8C  3C 60 80 A6 */	lis r3, guide_path_0409@ha
/* 80A57F90  38 63 F9 94 */	addi r3, r3, guide_path_0409@l
/* 80A57F94  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A57F98  2C 00 00 00 */	cmpwi r0, 0
/* 80A57F9C  40 80 00 70 */	bge lbl_80A5800C
lbl_80A57FA0:
/* 80A57FA0  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A57FA4  80 03 FE A4 */	lwz r0, call_pt@l(r3)
/* 80A57FA8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80A57FAC  41 82 00 20 */	beq lbl_80A57FCC
/* 80A57FB0  7F 83 E3 78 */	mr r3, r28
/* 80A57FB4  38 80 00 08 */	li r4, 8
/* 80A57FB8  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A57FBC  38 A0 00 02 */	li r5, 2
/* 80A57FC0  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57FC4  4B FF 11 E1 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A57FC8  48 00 00 1C */	b lbl_80A57FE4
lbl_80A57FCC:
/* 80A57FCC  7F 83 E3 78 */	mr r3, r28
/* 80A57FD0  38 80 00 07 */	li r4, 7
/* 80A57FD4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A57FD8  38 A0 00 02 */	li r5, 2
/* 80A57FDC  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A57FE0  4B FF 11 C5 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A57FE4:
/* 80A57FE4  3C 60 80 A6 */	lis r3, call_pt@ha
/* 80A57FE8  38 83 FE A4 */	addi r4, r3, call_pt@l
/* 80A57FEC  80 64 00 00 */	lwz r3, 0(r4)
/* 80A57FF0  38 03 00 01 */	addi r0, r3, 1
/* 80A57FF4  90 04 00 00 */	stw r0, 0(r4)
/* 80A57FF8  38 00 00 0A */	li r0, 0xa
/* 80A57FFC  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80A58000  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A58004  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A58008  48 00 01 A4 */	b lbl_80A581AC
lbl_80A5800C:
/* 80A5800C  3C 60 80 A6 */	lis r3, guide_path_0409@ha
/* 80A58010  38 83 F9 94 */	addi r4, r3, guide_path_0409@l
/* 80A58014  80 1C 09 04 */	lwz r0, 0x904(r28)
/* 80A58018  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A5801C  7C 64 02 14 */	add r3, r4, r0
/* 80A58020  C0 03 00 04 */	lfs f0, 4(r3)
/* 80A58024  D0 1C 08 F0 */	stfs f0, 0x8f0(r28)
/* 80A58028  80 1C 09 04 */	lwz r0, 0x904(r28)
/* 80A5802C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A58030  7C 64 02 14 */	add r3, r4, r0
/* 80A58034  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80A58038  D0 1C 08 F8 */	stfs f0, 0x8f8(r28)
/* 80A5803C  38 00 00 05 */	li r0, 5
/* 80A58040  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80A58044  3C 60 80 A6 */	lis r3, l_HIO@ha
/* 80A58048  38 63 FE B8 */	addi r3, r3, l_HIO@l
/* 80A5804C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80A58050  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80A58054  80 1C 05 D0 */	lwz r0, 0x5d0(r28)
/* 80A58058  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80A5805C  41 82 01 50 */	beq lbl_80A581AC
/* 80A58060  7F 83 E3 78 */	mr r3, r28
/* 80A58064  38 80 00 1A */	li r4, 0x1a
/* 80A58068  C0 3F 00 90 */	lfs f1, 0x90(r31)
/* 80A5806C  38 A0 00 02 */	li r5, 2
/* 80A58070  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A58074  4B FF 11 31 */	bl anm_init__FP12npc_ks_classifUcf
/* 80A58078  48 00 01 34 */	b lbl_80A581AC
lbl_80A5807C:
/* 80A5807C  C0 3C 08 F0 */	lfs f1, 0x8f0(r28)
/* 80A58080  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80A58084  EC 21 00 28 */	fsubs f1, f1, f0
/* 80A58088  D0 21 00 08 */	stfs f1, 8(r1)
/* 80A5808C  C0 5C 08 F8 */	lfs f2, 0x8f8(r28)
/* 80A58090  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A58094  EC 42 00 28 */	fsubs f2, f2, f0
/* 80A58098  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80A5809C  4B 80 F5 D8 */	b cM_atan2s__Fff
/* 80A580A0  B0 7C 08 FE */	sth r3, 0x8fe(r28)
/* 80A580A4  C0 01 00 08 */	lfs f0, 8(r1)
/* 80A580A8  EC 20 00 32 */	fmuls f1, f0, f0
/* 80A580AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80A580B0  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A580B4  EC 41 00 2A */	fadds f2, f1, f0
/* 80A580B8  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A580BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A580C0  40 81 00 0C */	ble lbl_80A580CC
/* 80A580C4  FC 00 10 34 */	frsqrte f0, f2
/* 80A580C8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80A580CC:
/* 80A580CC  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80A580D0  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80A580D4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80A580D8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A580DC  40 80 00 D0 */	bge lbl_80A581AC
/* 80A580E0  80 7C 09 04 */	lwz r3, 0x904(r28)
/* 80A580E4  38 03 00 01 */	addi r0, r3, 1
/* 80A580E8  90 1C 09 04 */	stw r0, 0x904(r28)
/* 80A580EC  38 00 00 01 */	li r0, 1
/* 80A580F0  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80A580F4  48 00 00 B8 */	b lbl_80A581AC
lbl_80A580F8:
/* 80A580F8  80 1C 05 D0 */	lwz r0, 0x5d0(r28)
/* 80A580FC  2C 00 00 08 */	cmpwi r0, 8
/* 80A58100  40 82 00 18 */	bne lbl_80A58118
/* 80A58104  A8 7C 05 C8 */	lha r3, 0x5c8(r28)
/* 80A58108  3C 63 00 01 */	addis r3, r3, 1
/* 80A5810C  38 03 80 00 */	addi r0, r3, -32768
/* 80A58110  B0 1C 08 FE */	sth r0, 0x8fe(r28)
/* 80A58114  48 00 00 0C */	b lbl_80A58120
lbl_80A58118:
/* 80A58118  A8 1C 05 C8 */	lha r0, 0x5c8(r28)
/* 80A5811C  B0 1C 08 FE */	sth r0, 0x8fe(r28)
lbl_80A58120:
/* 80A58120  C0 5C 05 C4 */	lfs f2, 0x5c4(r28)
/* 80A58124  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 80A58128  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A5812C  41 80 00 14 */	blt lbl_80A58140
/* 80A58130  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 80A58134  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80A58138  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A5813C  40 80 00 2C */	bge lbl_80A58168
lbl_80A58140:
/* 80A58140  80 1C 09 04 */	lwz r0, 0x904(r28)
/* 80A58144  1C 00 00 34 */	mulli r0, r0, 0x34
/* 80A58148  3C 60 80 A6 */	lis r3, guide_path_0409@ha
/* 80A5814C  38 63 F9 94 */	addi r3, r3, guide_path_0409@l
/* 80A58150  7C 03 00 2E */	lwzx r0, r3, r0
/* 80A58154  2C 00 00 00 */	cmpwi r0, 0
/* 80A58158  41 80 00 10 */	blt lbl_80A58168
/* 80A5815C  38 00 00 01 */	li r0, 1
/* 80A58160  B0 1C 05 EA */	sth r0, 0x5ea(r28)
/* 80A58164  48 00 00 48 */	b lbl_80A581AC
lbl_80A58168:
/* 80A58168  C0 1F 01 10 */	lfs f0, 0x110(r31)
/* 80A5816C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80A58170  40 80 00 28 */	bge lbl_80A58198
/* 80A58174  80 1C 05 D0 */	lwz r0, 0x5d0(r28)
/* 80A58178  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A5817C  41 82 00 1C */	beq lbl_80A58198
/* 80A58180  7F 83 E3 78 */	mr r3, r28
/* 80A58184  38 80 00 33 */	li r4, 0x33
/* 80A58188  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80A5818C  38 A0 00 02 */	li r5, 2
/* 80A58190  C0 5F 00 28 */	lfs f2, 0x28(r31)
/* 80A58194  4B FF 10 11 */	bl anm_init__FP12npc_ks_classifUcf
lbl_80A58198:
/* 80A58198  80 1C 05 D0 */	lwz r0, 0x5d0(r28)
/* 80A5819C  2C 00 00 33 */	cmpwi r0, 0x33
/* 80A581A0  40 82 00 0C */	bne lbl_80A581AC
/* 80A581A4  38 00 00 01 */	li r0, 1
/* 80A581A8  98 1C 05 FC */	stb r0, 0x5fc(r28)
lbl_80A581AC:
/* 80A581AC  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80A581B0  A8 9C 08 FE */	lha r4, 0x8fe(r28)
/* 80A581B4  38 A0 00 01 */	li r5, 1
/* 80A581B8  38 C0 10 00 */	li r6, 0x1000
/* 80A581BC  4B 81 84 4C */	b cLib_addCalcAngleS2__FPssss
/* 80A581C0  A8 7C 08 FE */	lha r3, 0x8fe(r28)
/* 80A581C4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80A581C8  7C 03 00 50 */	subf r0, r3, r0
/* 80A581CC  7C 00 07 34 */	extsh r0, r0
/* 80A581D0  2C 00 10 00 */	cmpwi r0, 0x1000
/* 80A581D4  41 81 00 0C */	bgt lbl_80A581E0
/* 80A581D8  2C 00 F0 00 */	cmpwi r0, -4096
/* 80A581DC  40 80 00 08 */	bge lbl_80A581E4
lbl_80A581E0:
/* 80A581E0  3B A0 00 00 */	li r29, 0
lbl_80A581E4:
/* 80A581E4  38 7C 04 DC */	addi r3, r28, 0x4dc
/* 80A581E8  38 80 00 00 */	li r4, 0
/* 80A581EC  38 A0 00 01 */	li r5, 1
/* 80A581F0  38 C0 08 00 */	li r6, 0x800
/* 80A581F4  4B 81 84 14 */	b cLib_addCalcAngleS2__FPssss
/* 80A581F8  4B FF 0E 5D */	bl checkDoorDemo__Fv
/* 80A581FC  2C 03 00 00 */	cmpwi r3, 0
/* 80A58200  41 82 00 58 */	beq lbl_80A58258
/* 80A58204  C0 3F 04 34 */	lfs f1, 0x434(r31)
/* 80A58208  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A5820C  EC 41 00 28 */	fsubs f2, f1, f0
/* 80A58210  C0 3F 04 38 */	lfs f1, 0x438(r31)
/* 80A58214  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A58218  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A5821C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80A58220  EC 00 00 32 */	fmuls f0, f0, f0
/* 80A58224  EC 21 00 2A */	fadds f1, f1, f0
/* 80A58228  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A5822C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A58230  40 81 00 0C */	ble lbl_80A5823C
/* 80A58234  FC 00 08 34 */	frsqrte f0, f1
/* 80A58238  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80A5823C:
/* 80A5823C  C0 1F 01 3C */	lfs f0, 0x13c(r31)
/* 80A58240  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80A58244  40 80 00 14 */	bge lbl_80A58258
/* 80A58248  38 00 00 64 */	li r0, 0x64
/* 80A5824C  B0 1C 05 E8 */	sth r0, 0x5e8(r28)
/* 80A58250  38 00 00 00 */	li r0, 0
/* 80A58254  B0 1C 05 EA */	sth r0, 0x5ea(r28)
lbl_80A58258:
/* 80A58258  7F A3 EB 78 */	mr r3, r29
/* 80A5825C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A58260  4B 90 9F C4 */	b _restgpr_28
/* 80A58264  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A58268  7C 08 03 A6 */	mtlr r0
/* 80A5826C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A58270  4E 80 00 20 */	blr 

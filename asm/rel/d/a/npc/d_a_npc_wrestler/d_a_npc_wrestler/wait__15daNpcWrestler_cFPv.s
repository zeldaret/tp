lbl_80B30F00:
/* 80B30F00  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B30F04  7C 08 02 A6 */	mflr r0
/* 80B30F08  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B30F0C  39 61 00 50 */	addi r11, r1, 0x50
/* 80B30F10  4B 83 12 C9 */	bl _savegpr_28
/* 80B30F14  7C 7D 1B 78 */	mr r29, r3
/* 80B30F18  3C 80 80 B4 */	lis r4, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B30F1C  3B C4 16 DC */	addi r30, r4, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B30F20  3C 80 80 B4 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80B41DF8@ha */
/* 80B30F24  3B E4 1D F8 */	addi r31, r4, cNullVec__6Z2Calc@l /* 0x80B41DF8@l */
/* 80B30F28  A0 03 0E 96 */	lhz r0, 0xe96(r3)
/* 80B30F2C  2C 00 00 02 */	cmpwi r0, 2
/* 80B30F30  41 82 00 6C */	beq lbl_80B30F9C
/* 80B30F34  40 80 07 30 */	bge lbl_80B31664
/* 80B30F38  2C 00 00 00 */	cmpwi r0, 0
/* 80B30F3C  41 82 00 0C */	beq lbl_80B30F48
/* 80B30F40  48 00 07 24 */	b lbl_80B31664
/* 80B30F44  48 00 07 20 */	b lbl_80B31664
lbl_80B30F48:
/* 80B30F48  38 80 00 05 */	li r4, 5
/* 80B30F4C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B30F50  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B30F54  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B30F58  7D 89 03 A6 */	mtctr r12
/* 80B30F5C  4E 80 04 21 */	bctrl 
/* 80B30F60  7F A3 EB 78 */	mr r3, r29
/* 80B30F64  38 80 00 00 */	li r4, 0
/* 80B30F68  C0 3D 0E 8C */	lfs f1, 0xe8c(r29)
/* 80B30F6C  38 A0 00 00 */	li r5, 0
/* 80B30F70  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B30F74  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B30F78  7D 89 03 A6 */	mtctr r12
/* 80B30F7C  4E 80 04 21 */	bctrl 
/* 80B30F80  38 00 00 00 */	li r0, 0
/* 80B30F84  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B30F88  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B30F8C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B30F90  38 00 00 02 */	li r0, 2
/* 80B30F94  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B30F98  48 00 06 CC */	b lbl_80B31664
lbl_80B30F9C:
/* 80B30F9C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B30FA0  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B30FA4  88 64 4F AD */	lbz r3, 0x4fad(r4)
/* 80B30FA8  28 03 00 00 */	cmplwi r3, 0
/* 80B30FAC  41 82 02 D4 */	beq lbl_80B31280
/* 80B30FB0  88 1D 09 ED */	lbz r0, 0x9ed(r29)
/* 80B30FB4  28 00 00 00 */	cmplwi r0, 0
/* 80B30FB8  41 82 00 24 */	beq lbl_80B30FDC
/* 80B30FBC  38 00 00 00 */	li r0, 0
/* 80B30FC0  28 03 00 00 */	cmplwi r3, 0
/* 80B30FC4  41 82 00 0C */	beq lbl_80B30FD0
/* 80B30FC8  28 03 00 02 */	cmplwi r3, 2
/* 80B30FCC  40 82 00 08 */	bne lbl_80B30FD4
lbl_80B30FD0:
/* 80B30FD0  38 00 00 01 */	li r0, 1
lbl_80B30FD4:
/* 80B30FD4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B30FD8  40 82 02 A8 */	bne lbl_80B31280
lbl_80B30FDC:
/* 80B30FDC  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80B30FE0  28 00 00 01 */	cmplwi r0, 1
/* 80B30FE4  40 82 01 F4 */	bne lbl_80B311D8
/* 80B30FE8  38 00 00 00 */	li r0, 0
/* 80B30FEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B30FF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B30FF4  88 63 4F B5 */	lbz r3, 0x4fb5(r3)
/* 80B30FF8  28 03 00 01 */	cmplwi r3, 1
/* 80B30FFC  41 82 00 0C */	beq lbl_80B31008
/* 80B31000  28 03 00 02 */	cmplwi r3, 2
/* 80B31004  40 82 00 08 */	bne lbl_80B3100C
lbl_80B31008:
/* 80B31008  38 00 00 01 */	li r0, 1
lbl_80B3100C:
/* 80B3100C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80B31010  41 82 00 14 */	beq lbl_80B31024
/* 80B31014  38 64 4F F8 */	addi r3, r4, 0x4ff8
/* 80B31018  4B 51 77 D9 */	bl ChkPresentEnd__16dEvent_manager_cFv
/* 80B3101C  2C 03 00 00 */	cmpwi r3, 0
/* 80B31020  41 82 03 20 */	beq lbl_80B31340
lbl_80B31024:
/* 80B31024  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B31028  28 00 00 01 */	cmplwi r0, 1
/* 80B3102C  40 82 01 20 */	bne lbl_80B3114C
/* 80B31030  88 1D 0E 99 */	lbz r0, 0xe99(r29)
/* 80B31034  28 00 00 00 */	cmplwi r0, 0
/* 80B31038  40 82 01 14 */	bne lbl_80B3114C
/* 80B3103C  38 60 00 3A */	li r3, 0x3a
/* 80B31040  4B 62 45 F5 */	bl daNpcF_chkEvtBit__FUl
/* 80B31044  2C 03 00 00 */	cmpwi r3, 0
/* 80B31048  41 82 01 04 */	beq lbl_80B3114C
/* 80B3104C  38 60 00 3E */	li r3, 0x3e
/* 80B31050  4B 62 45 E5 */	bl daNpcF_chkEvtBit__FUl
/* 80B31054  2C 03 00 00 */	cmpwi r3, 0
/* 80B31058  40 82 00 F4 */	bne lbl_80B3114C
/* 80B3105C  38 60 00 3F */	li r3, 0x3f
/* 80B31060  4B 62 45 D5 */	bl daNpcF_chkEvtBit__FUl
/* 80B31064  2C 03 00 00 */	cmpwi r3, 0
/* 80B31068  41 82 00 E4 */	beq lbl_80B3114C
/* 80B3106C  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80B31070  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 80B31074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B31078  40 81 00 0C */	ble lbl_80B31084
/* 80B3107C  38 00 00 03 */	li r0, 3
/* 80B31080  48 00 00 08 */	b lbl_80B31088
lbl_80B31084:
/* 80B31084  38 00 00 04 */	li r0, 4
lbl_80B31088:
/* 80B31088  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80B3108C  7F A3 EB 78 */	mr r3, r29
/* 80B31090  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B31094  54 00 10 3A */	slwi r0, r0, 2
/* 80B31098  38 9F 00 24 */	addi r4, r31, 0x24
/* 80B3109C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B310A0  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80B310A4  54 00 10 3A */	slwi r0, r0, 2
/* 80B310A8  38 BF 08 0C */	addi r5, r31, 0x80c
/* 80B310AC  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B310B0  38 C0 00 01 */	li r6, 1
/* 80B310B4  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80B310B8  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80B310BC  4B 62 28 99 */	bl changeEvent__8daNpcF_cFPcPcUsUs
/* 80B310C0  80 7F 0A 84 */	lwz r3, 0xa84(r31)
/* 80B310C4  80 1F 0A 88 */	lwz r0, 0xa88(r31)
/* 80B310C8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B310CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B310D0  80 1F 0A 8C */	lwz r0, 0xa8c(r31)
/* 80B310D4  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B310D8  38 00 00 03 */	li r0, 3
/* 80B310DC  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B310E0  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B310E4  4B 83 0F 35 */	bl __ptmf_test
/* 80B310E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B310EC  41 82 00 18 */	beq lbl_80B31104
/* 80B310F0  7F A3 EB 78 */	mr r3, r29
/* 80B310F4  38 80 00 00 */	li r4, 0
/* 80B310F8  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B310FC  4B 83 0F 89 */	bl __ptmf_scall
/* 80B31100  60 00 00 00 */	nop 
lbl_80B31104:
/* 80B31104  38 00 00 00 */	li r0, 0
/* 80B31108  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B3110C  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B31110  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B31114  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B31118  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B3111C  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B31120  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B31124  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B31128  4B 83 0E F1 */	bl __ptmf_test
/* 80B3112C  2C 03 00 00 */	cmpwi r3, 0
/* 80B31130  41 82 05 34 */	beq lbl_80B31664
/* 80B31134  7F A3 EB 78 */	mr r3, r29
/* 80B31138  38 80 00 00 */	li r4, 0
/* 80B3113C  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B31140  4B 83 0F 45 */	bl __ptmf_scall
/* 80B31144  60 00 00 00 */	nop 
/* 80B31148  48 00 05 1C */	b lbl_80B31664
lbl_80B3114C:
/* 80B3114C  80 7F 0A 90 */	lwz r3, 0xa90(r31)
/* 80B31150  80 1F 0A 94 */	lwz r0, 0xa94(r31)
/* 80B31154  90 61 00 14 */	stw r3, 0x14(r1)
/* 80B31158  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B3115C  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 80B31160  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B31164  38 00 00 03 */	li r0, 3
/* 80B31168  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B3116C  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B31170  4B 83 0E A9 */	bl __ptmf_test
/* 80B31174  2C 03 00 00 */	cmpwi r3, 0
/* 80B31178  41 82 00 18 */	beq lbl_80B31190
/* 80B3117C  7F A3 EB 78 */	mr r3, r29
/* 80B31180  38 80 00 00 */	li r4, 0
/* 80B31184  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B31188  4B 83 0E FD */	bl __ptmf_scall
/* 80B3118C  60 00 00 00 */	nop 
lbl_80B31190:
/* 80B31190  38 00 00 00 */	li r0, 0
/* 80B31194  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B31198  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80B3119C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80B311A0  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B311A4  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B311A8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80B311AC  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B311B0  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B311B4  4B 83 0E 65 */	bl __ptmf_test
/* 80B311B8  2C 03 00 00 */	cmpwi r3, 0
/* 80B311BC  41 82 04 A8 */	beq lbl_80B31664
/* 80B311C0  7F A3 EB 78 */	mr r3, r29
/* 80B311C4  38 80 00 00 */	li r4, 0
/* 80B311C8  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B311CC  4B 83 0E B9 */	bl __ptmf_scall
/* 80B311D0  60 00 00 00 */	nop 
/* 80B311D4  48 00 04 90 */	b lbl_80B31664
lbl_80B311D8:
/* 80B311D8  38 64 4F F8 */	addi r3, r4, 0x4ff8
/* 80B311DC  80 9F 08 28 */	lwz r4, 0x828(r31)
/* 80B311E0  38 A0 00 00 */	li r5, 0
/* 80B311E4  38 C0 00 00 */	li r6, 0
/* 80B311E8  4B 51 69 35 */	bl getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80B311EC  2C 03 FF FF */	cmpwi r3, -1
/* 80B311F0  41 82 01 50 */	beq lbl_80B31340
/* 80B311F4  80 7F 0A 9C */	lwz r3, 0xa9c(r31)
/* 80B311F8  80 1F 0A A0 */	lwz r0, 0xaa0(r31)
/* 80B311FC  90 61 00 08 */	stw r3, 8(r1)
/* 80B31200  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B31204  80 1F 0A A4 */	lwz r0, 0xaa4(r31)
/* 80B31208  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B3120C  38 00 00 03 */	li r0, 3
/* 80B31210  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B31214  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B31218  4B 83 0E 01 */	bl __ptmf_test
/* 80B3121C  2C 03 00 00 */	cmpwi r3, 0
/* 80B31220  41 82 00 18 */	beq lbl_80B31238
/* 80B31224  7F A3 EB 78 */	mr r3, r29
/* 80B31228  38 80 00 00 */	li r4, 0
/* 80B3122C  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B31230  4B 83 0E 55 */	bl __ptmf_scall
/* 80B31234  60 00 00 00 */	nop 
lbl_80B31238:
/* 80B31238  38 00 00 00 */	li r0, 0
/* 80B3123C  B0 1D 0E 96 */	sth r0, 0xe96(r29)
/* 80B31240  80 61 00 08 */	lwz r3, 8(r1)
/* 80B31244  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B31248  90 7D 0D CC */	stw r3, 0xdcc(r29)
/* 80B3124C  90 1D 0D D0 */	stw r0, 0xdd0(r29)
/* 80B31250  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80B31254  90 1D 0D D4 */	stw r0, 0xdd4(r29)
/* 80B31258  38 7D 0D CC */	addi r3, r29, 0xdcc
/* 80B3125C  4B 83 0D BD */	bl __ptmf_test
/* 80B31260  2C 03 00 00 */	cmpwi r3, 0
/* 80B31264  41 82 04 00 */	beq lbl_80B31664
/* 80B31268  7F A3 EB 78 */	mr r3, r29
/* 80B3126C  38 80 00 00 */	li r4, 0
/* 80B31270  39 9D 0D CC */	addi r12, r29, 0xdcc
/* 80B31274  4B 83 0E 11 */	bl __ptmf_scall
/* 80B31278  60 00 00 00 */	nop 
/* 80B3127C  48 00 03 E8 */	b lbl_80B31664
lbl_80B31280:
/* 80B31280  38 00 00 00 */	li r0, 0
/* 80B31284  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80B31288  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B3128C  28 00 00 01 */	cmplwi r0, 1
/* 80B31290  40 82 00 60 */	bne lbl_80B312F0
/* 80B31294  38 60 00 3F */	li r3, 0x3f
/* 80B31298  4B 62 43 9D */	bl daNpcF_chkEvtBit__FUl
/* 80B3129C  2C 03 00 00 */	cmpwi r3, 0
/* 80B312A0  40 82 00 50 */	bne lbl_80B312F0
/* 80B312A4  7F A3 EB 78 */	mr r3, r29
/* 80B312A8  38 80 00 06 */	li r4, 6
/* 80B312AC  38 A0 00 00 */	li r5, 0
/* 80B312B0  4B 62 2F F1 */	bl getEvtAreaTagP__8daNpcF_cFii
/* 80B312B4  7C 7C 1B 79 */	or. r28, r3, r3
/* 80B312B8  41 82 00 38 */	beq lbl_80B312F0
/* 80B312BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B312C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B312C4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B312C8  4B 4E 95 19 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B312CC  C0 5E 05 88 */	lfs f2, 0x588(r30)
/* 80B312D0  C0 1C 04 EC */	lfs f0, 0x4ec(r28)
/* 80B312D4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B312D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B312DC  40 80 00 14 */	bge lbl_80B312F0
/* 80B312E0  38 00 00 01 */	li r0, 1
/* 80B312E4  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80B312E8  7F 83 E3 78 */	mr r3, r28
/* 80B312EC  4B 4E 89 91 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80B312F0:
/* 80B312F0  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80B312F4  28 00 00 00 */	cmplwi r0, 0
/* 80B312F8  41 82 00 18 */	beq lbl_80B31310
/* 80B312FC  88 1D 0E 9B */	lbz r0, 0xe9b(r29)
/* 80B31300  54 00 10 3A */	slwi r0, r0, 2
/* 80B31304  38 7F 00 24 */	addi r3, r31, 0x24
/* 80B31308  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B3130C  90 1D 01 00 */	stw r0, 0x100(r29)
lbl_80B31310:
/* 80B31310  7F A3 EB 78 */	mr r3, r29
/* 80B31314  88 9D 0E 99 */	lbz r4, 0xe99(r29)
/* 80B31318  A0 1D 09 E6 */	lhz r0, 0x9e6(r29)
/* 80B3131C  54 00 10 3A */	slwi r0, r0, 2
/* 80B31320  38 BF 08 0C */	addi r5, r31, 0x80c
/* 80B31324  7C A5 00 2E */	lwzx r5, r5, r0
/* 80B31328  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 80B3132C  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 80B31330  38 E0 00 28 */	li r7, 0x28
/* 80B31334  39 00 00 FF */	li r8, 0xff
/* 80B31338  39 20 00 01 */	li r9, 1
/* 80B3133C  4B 62 25 41 */	bl orderEvent__8daNpcF_cFiPcUsUsUcUs
lbl_80B31340:
/* 80B31340  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B31344  4B 61 F3 A9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B31348  28 03 00 00 */	cmplwi r3, 0
/* 80B3134C  41 82 00 BC */	beq lbl_80B31408
/* 80B31350  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B31354  4B 61 F3 99 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B31358  28 03 00 00 */	cmplwi r3, 0
/* 80B3135C  40 82 00 28 */	bne lbl_80B31384
/* 80B31360  7F A3 EB 78 */	mr r3, r29
/* 80B31364  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B31368  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3136C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B31370  7F A5 EB 78 */	mr r5, r29
/* 80B31374  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80B31378  4B 62 28 65 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B3137C  7C 7F 1B 78 */	mr r31, r3
/* 80B31380  48 00 00 24 */	b lbl_80B313A4
lbl_80B31384:
/* 80B31384  7F A3 EB 78 */	mr r3, r29
/* 80B31388  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3138C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B31390  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B31394  7F A5 EB 78 */	mr r5, r29
/* 80B31398  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80B3139C  4B 62 28 41 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B313A0  7C 7F 1B 78 */	mr r31, r3
lbl_80B313A4:
/* 80B313A4  2C 1F 00 00 */	cmpwi r31, 0
/* 80B313A8  41 82 00 30 */	beq lbl_80B313D8
/* 80B313AC  A8 1D 0E 90 */	lha r0, 0xe90(r29)
/* 80B313B0  2C 00 00 02 */	cmpwi r0, 2
/* 80B313B4  41 82 00 0C */	beq lbl_80B313C0
/* 80B313B8  38 00 00 02 */	li r0, 2
/* 80B313BC  B0 1D 0E 90 */	sth r0, 0xe90(r29)
lbl_80B313C0:
/* 80B313C0  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B313C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B313C8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B313CC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B313D0  4B 61 F2 ED */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B313D4  48 00 00 20 */	b lbl_80B313F4
lbl_80B313D8:
/* 80B313D8  A8 1D 0E 90 */	lha r0, 0xe90(r29)
/* 80B313DC  2C 00 00 00 */	cmpwi r0, 0
/* 80B313E0  41 82 00 0C */	beq lbl_80B313EC
/* 80B313E4  38 00 00 00 */	li r0, 0
/* 80B313E8  B0 1D 0E 90 */	sth r0, 0xe90(r29)
lbl_80B313EC:
/* 80B313EC  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B313F0  4B 61 F2 F1 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80B313F4:
/* 80B313F4  2C 1F 00 00 */	cmpwi r31, 0
/* 80B313F8  40 82 00 C4 */	bne lbl_80B314BC
/* 80B313FC  38 00 00 00 */	li r0, 0
/* 80B31400  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B31404  48 00 00 B8 */	b lbl_80B314BC
lbl_80B31408:
/* 80B31408  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B3140C  4B 61 F2 E1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B31410  28 03 00 00 */	cmplwi r3, 0
/* 80B31414  40 82 00 28 */	bne lbl_80B3143C
/* 80B31418  7F A3 EB 78 */	mr r3, r29
/* 80B3141C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B31420  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B31424  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B31428  7F A5 EB 78 */	mr r5, r29
/* 80B3142C  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80B31430  4B 62 27 AD */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B31434  7C 7F 1B 78 */	mr r31, r3
/* 80B31438  48 00 00 24 */	b lbl_80B3145C
lbl_80B3143C:
/* 80B3143C  7F A3 EB 78 */	mr r3, r29
/* 80B31440  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B31444  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B31448  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B3144C  7F A5 EB 78 */	mr r5, r29
/* 80B31450  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80B31454  4B 62 27 89 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80B31458  7C 7F 1B 78 */	mr r31, r3
lbl_80B3145C:
/* 80B3145C  2C 1F 00 00 */	cmpwi r31, 0
/* 80B31460  41 82 00 30 */	beq lbl_80B31490
/* 80B31464  A8 1D 0E 90 */	lha r0, 0xe90(r29)
/* 80B31468  2C 00 00 02 */	cmpwi r0, 2
/* 80B3146C  41 82 00 0C */	beq lbl_80B31478
/* 80B31470  38 00 00 02 */	li r0, 2
/* 80B31474  B0 1D 0E 90 */	sth r0, 0xe90(r29)
lbl_80B31478:
/* 80B31478  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B3147C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B31480  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B31484  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80B31488  4B 61 F2 35 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B3148C  48 00 00 20 */	b lbl_80B314AC
lbl_80B31490:
/* 80B31490  A8 1D 0E 90 */	lha r0, 0xe90(r29)
/* 80B31494  2C 00 00 00 */	cmpwi r0, 0
/* 80B31498  41 82 00 0C */	beq lbl_80B314A4
/* 80B3149C  38 00 00 00 */	li r0, 0
/* 80B314A0  B0 1D 0E 90 */	sth r0, 0xe90(r29)
lbl_80B314A4:
/* 80B314A4  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B314A8  4B 61 F2 39 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80B314AC:
/* 80B314AC  2C 1F 00 00 */	cmpwi r31, 0
/* 80B314B0  41 82 00 0C */	beq lbl_80B314BC
/* 80B314B4  38 00 00 00 */	li r0, 0
/* 80B314B8  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80B314BC:
/* 80B314BC  38 7D 0C 80 */	addi r3, r29, 0xc80
/* 80B314C0  4B 61 F2 2D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B314C4  28 03 00 00 */	cmplwi r3, 0
/* 80B314C8  40 82 01 9C */	bne lbl_80B31664
/* 80B314CC  AB FD 04 B6 */	lha r31, 0x4b6(r29)
/* 80B314D0  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80B314D4  7C 1F 18 00 */	cmpw r31, r3
/* 80B314D8  41 82 01 8C */	beq lbl_80B31664
/* 80B314DC  80 9D 09 6C */	lwz r4, 0x96c(r29)
/* 80B314E0  2C 04 00 00 */	cmpwi r4, 0
/* 80B314E4  40 82 00 CC */	bne lbl_80B315B0
/* 80B314E8  7C 03 F8 50 */	subf r0, r3, r31
/* 80B314EC  7C 00 07 34 */	extsh r0, r0
/* 80B314F0  7C 03 F8 00 */	cmpw r3, r31
/* 80B314F4  40 82 00 10 */	bne lbl_80B31504
/* 80B314F8  38 04 00 01 */	addi r0, r4, 1
/* 80B314FC  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B31500  48 00 00 84 */	b lbl_80B31584
lbl_80B31504:
/* 80B31504  C0 5E 05 8C */	lfs f2, 0x58c(r30)
/* 80B31508  C8 3E 05 98 */	lfd f1, 0x598(r30)
/* 80B3150C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B31510  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B31514  3C 00 43 30 */	lis r0, 0x4330
/* 80B31518  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B3151C  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80B31520  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B31524  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B31528  FC 00 02 10 */	fabs f0, f0
/* 80B3152C  FC 00 00 18 */	frsp f0, f0
/* 80B31530  FC 00 00 1E */	fctiwz f0, f0
/* 80B31534  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80B31538  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80B3153C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80B31540  40 81 00 44 */	ble lbl_80B31584
/* 80B31544  7F A3 EB 78 */	mr r3, r29
/* 80B31548  38 80 00 05 */	li r4, 5
/* 80B3154C  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B31550  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B31554  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B31558  7D 89 03 A6 */	mtctr r12
/* 80B3155C  4E 80 04 21 */	bctrl 
/* 80B31560  7F A3 EB 78 */	mr r3, r29
/* 80B31564  38 80 00 06 */	li r4, 6
/* 80B31568  80 BD 0B D8 */	lwz r5, 0xbd8(r29)
/* 80B3156C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B31570  38 A0 00 00 */	li r5, 0
/* 80B31574  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B31578  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3157C  7D 89 03 A6 */	mtctr r12
/* 80B31580  4E 80 04 21 */	bctrl 
lbl_80B31584:
/* 80B31584  B3 FD 09 96 */	sth r31, 0x996(r29)
/* 80B31588  38 00 00 00 */	li r0, 0
/* 80B3158C  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80B31590  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B31594  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80B31598  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B3159C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B315A0  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80B315A4  38 03 00 01 */	addi r0, r3, 1
/* 80B315A8  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B315AC  48 00 00 68 */	b lbl_80B31614
lbl_80B315B0:
/* 80B315B0  2C 04 00 01 */	cmpwi r4, 1
/* 80B315B4  40 82 00 60 */	bne lbl_80B31614
/* 80B315B8  7F A3 EB 78 */	mr r3, r29
/* 80B315BC  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80B315C0  C0 3E 05 90 */	lfs f1, 0x590(r30)
/* 80B315C4  38 A0 00 00 */	li r5, 0
/* 80B315C8  4B 62 29 2D */	bl turn__8daNpcF_cFsfi
/* 80B315CC  2C 03 00 00 */	cmpwi r3, 0
/* 80B315D0  41 82 00 2C */	beq lbl_80B315FC
/* 80B315D4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B315D8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B315DC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B315E0  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B315E4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B315E8  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80B315EC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80B315F0  38 03 00 01 */	addi r0, r3, 1
/* 80B315F4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80B315F8  48 00 00 1C */	b lbl_80B31614
lbl_80B315FC:
/* 80B315FC  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B31600  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80B31604  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B31608  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B3160C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B31610  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
lbl_80B31614:
/* 80B31614  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80B31618  2C 00 00 01 */	cmpwi r0, 1
/* 80B3161C  40 81 00 48 */	ble lbl_80B31664
/* 80B31620  7F A3 EB 78 */	mr r3, r29
/* 80B31624  38 80 00 05 */	li r4, 5
/* 80B31628  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3162C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B31630  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B31634  7D 89 03 A6 */	mtctr r12
/* 80B31638  4E 80 04 21 */	bctrl 
/* 80B3163C  7F A3 EB 78 */	mr r3, r29
/* 80B31640  38 80 00 00 */	li r4, 0
/* 80B31644  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B31648  38 A0 00 00 */	li r5, 0
/* 80B3164C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B31650  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B31654  7D 89 03 A6 */	mtctr r12
/* 80B31658  4E 80 04 21 */	bctrl 
/* 80B3165C  38 00 00 00 */	li r0, 0
/* 80B31660  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80B31664:
/* 80B31664  38 60 00 01 */	li r3, 1
/* 80B31668  39 61 00 50 */	addi r11, r1, 0x50
/* 80B3166C  4B 83 0B B9 */	bl _restgpr_28
/* 80B31670  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B31674  7C 08 03 A6 */	mtlr r0
/* 80B31678  38 21 00 50 */	addi r1, r1, 0x50
/* 80B3167C  4E 80 00 20 */	blr 

lbl_80557ED8:
/* 80557ED8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80557EDC  7C 08 02 A6 */	mflr r0
/* 80557EE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80557EE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80557EE8  4B E0 A2 F5 */	bl _savegpr_29
/* 80557EEC  7C 7E 1B 78 */	mr r30, r3
/* 80557EF0  3C 60 80 56 */	lis r3, m__19daNpc_Kolin_Param_c@ha /* 0x8055A5B4@ha */
/* 80557EF4  3B E3 A5 B4 */	addi r31, r3, m__19daNpc_Kolin_Param_c@l /* 0x8055A5B4@l */
/* 80557EF8  A0 1E 0E 22 */	lhz r0, 0xe22(r30)
/* 80557EFC  2C 00 00 02 */	cmpwi r0, 2
/* 80557F00  41 82 01 EC */	beq lbl_805580EC
/* 80557F04  40 80 07 78 */	bge lbl_8055867C
/* 80557F08  2C 00 00 00 */	cmpwi r0, 0
/* 80557F0C  40 80 00 0C */	bge lbl_80557F18
/* 80557F10  48 00 07 6C */	b lbl_8055867C
/* 80557F14  48 00 07 68 */	b lbl_8055867C
lbl_80557F18:
/* 80557F18  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80557F1C  2C 00 00 00 */	cmpwi r0, 0
/* 80557F20  40 82 01 CC */	bne lbl_805580EC
/* 80557F24  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80557F28  2C 00 00 04 */	cmpwi r0, 4
/* 80557F2C  41 82 00 70 */	beq lbl_80557F9C
/* 80557F30  40 80 01 50 */	bge lbl_80558080
/* 80557F34  2C 00 00 00 */	cmpwi r0, 0
/* 80557F38  41 82 00 08 */	beq lbl_80557F40
/* 80557F3C  48 00 01 44 */	b lbl_80558080
lbl_80557F40:
/* 80557F40  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80557F44  2C 00 00 08 */	cmpwi r0, 8
/* 80557F48  41 82 00 24 */	beq lbl_80557F6C
/* 80557F4C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80557F50  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80557F54  4B BE D9 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80557F58  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80557F5C  38 00 00 08 */	li r0, 8
/* 80557F60  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80557F64  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80557F68  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80557F6C:
/* 80557F6C  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80557F70  2C 00 00 01 */	cmpwi r0, 1
/* 80557F74  41 82 01 64 */	beq lbl_805580D8
/* 80557F78  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80557F7C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80557F80  4B BE D9 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80557F84  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80557F88  38 00 00 01 */	li r0, 1
/* 80557F8C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80557F90  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80557F94  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80557F98  48 00 01 40 */	b lbl_805580D8
lbl_80557F9C:
/* 80557F9C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80557FA0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80557FA4  28 04 00 FF */	cmplwi r4, 0xff
/* 80557FA8  41 82 00 7C */	beq lbl_80558024
/* 80557FAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80557FB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80557FB4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80557FB8  7C 05 07 74 */	extsb r5, r0
/* 80557FBC  4B AD D3 A5 */	bl isSwitch__10dSv_info_cCFii
/* 80557FC0  2C 03 00 00 */	cmpwi r3, 0
/* 80557FC4  41 82 00 60 */	beq lbl_80558024
/* 80557FC8  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80557FCC  2C 00 00 0B */	cmpwi r0, 0xb
/* 80557FD0  41 82 00 24 */	beq lbl_80557FF4
/* 80557FD4  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80557FD8  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80557FDC  4B BE D8 BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80557FE0  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80557FE4  38 00 00 0B */	li r0, 0xb
/* 80557FE8  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80557FEC  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80557FF0  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80557FF4:
/* 80557FF4  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80557FF8  2C 00 00 12 */	cmpwi r0, 0x12
/* 80557FFC  41 82 00 DC */	beq lbl_805580D8
/* 80558000  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80558004  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80558008  4B BE D8 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055800C  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80558010  38 00 00 12 */	li r0, 0x12
/* 80558014  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80558018  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8055801C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80558020  48 00 00 B8 */	b lbl_805580D8
lbl_80558024:
/* 80558024  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80558028  2C 00 00 0A */	cmpwi r0, 0xa
/* 8055802C  41 82 00 24 */	beq lbl_80558050
/* 80558030  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80558034  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80558038  4B BE D8 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8055803C  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80558040  38 00 00 0A */	li r0, 0xa
/* 80558044  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80558048  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 8055804C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80558050:
/* 80558050  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80558054  2C 00 00 11 */	cmpwi r0, 0x11
/* 80558058  41 82 00 80 */	beq lbl_805580D8
/* 8055805C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80558060  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80558064  4B BE D8 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558068  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 8055806C  38 00 00 11 */	li r0, 0x11
/* 80558070  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80558074  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80558078  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 8055807C  48 00 00 5C */	b lbl_805580D8
lbl_80558080:
/* 80558080  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80558084  2C 00 00 0D */	cmpwi r0, 0xd
/* 80558088  41 82 00 24 */	beq lbl_805580AC
/* 8055808C  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80558090  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80558094  4B BE D8 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80558098  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 8055809C  38 00 00 0D */	li r0, 0xd
/* 805580A0  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 805580A4  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 805580A8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_805580AC:
/* 805580AC  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 805580B0  2C 00 00 01 */	cmpwi r0, 1
/* 805580B4  41 82 00 24 */	beq lbl_805580D8
/* 805580B8  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 805580BC  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 805580C0  4B BE D7 D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 805580C4  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 805580C8  38 00 00 01 */	li r0, 1
/* 805580CC  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 805580D0  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 805580D4  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_805580D8:
/* 805580D8  38 00 00 00 */	li r0, 0
/* 805580DC  90 1E 0F FC */	stw r0, 0xffc(r30)
/* 805580E0  90 1E 10 00 */	stw r0, 0x1000(r30)
/* 805580E4  38 00 00 02 */	li r0, 2
/* 805580E8  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_805580EC:
/* 805580EC  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 805580F0  28 00 00 04 */	cmplwi r0, 4
/* 805580F4  40 82 00 8C */	bne lbl_80558180
/* 805580F8  38 7E 0F A8 */	addi r3, r30, 0xfa8
/* 805580FC  4B BE D6 0D */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80558100  28 03 00 00 */	cmplwi r3, 0
/* 80558104  41 82 00 44 */	beq lbl_80558148
/* 80558108  7F C4 F3 78 */	mr r4, r30
/* 8055810C  38 BF 00 00 */	addi r5, r31, 0
/* 80558110  C0 25 00 70 */	lfs f1, 0x70(r5)
/* 80558114  C0 45 00 74 */	lfs f2, 0x74(r5)
/* 80558118  C0 65 00 78 */	lfs f3, 0x78(r5)
/* 8055811C  C0 85 00 7C */	lfs f4, 0x7c(r5)
/* 80558120  C0 A5 00 80 */	lfs f5, 0x80(r5)
/* 80558124  C0 C5 00 84 */	lfs f6, 0x84(r5)
/* 80558128  C0 E5 00 88 */	lfs f7, 0x88(r5)
/* 8055812C  48 50 DF AD */	bl checkStartDemo13StbEvt__11daNpc_Len_cFP10fopAc_ac_cfffffff
/* 80558130  2C 03 00 00 */	cmpwi r3, 0
/* 80558134  41 82 00 14 */	beq lbl_80558148
/* 80558138  38 00 00 07 */	li r0, 7
/* 8055813C  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80558140  38 00 00 01 */	li r0, 1
/* 80558144  98 1E 10 15 */	stb r0, 0x1015(r30)
lbl_80558148:
/* 80558148  88 1E 10 15 */	lbz r0, 0x1015(r30)
/* 8055814C  28 00 00 00 */	cmplwi r0, 0
/* 80558150  41 82 00 30 */	beq lbl_80558180
/* 80558154  38 60 00 3C */	li r3, 0x3c
/* 80558158  4B BF 49 55 */	bl daNpcT_chkEvtBit__FUl
/* 8055815C  2C 03 00 00 */	cmpwi r3, 0
/* 80558160  41 82 00 20 */	beq lbl_80558180
/* 80558164  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80558168  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055816C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80558170  28 00 00 00 */	cmplwi r0, 0
/* 80558174  40 82 00 0C */	bne lbl_80558180
/* 80558178  38 00 00 00 */	li r0, 0
/* 8055817C  98 1E 10 15 */	stb r0, 0x1015(r30)
lbl_80558180:
/* 80558180  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80558184  2C 00 00 00 */	cmpwi r0, 0
/* 80558188  40 82 04 F4 */	bne lbl_8055867C
/* 8055818C  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80558190  28 00 00 04 */	cmplwi r0, 4
/* 80558194  40 82 00 84 */	bne lbl_80558218
/* 80558198  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8055819C  2C 00 00 00 */	cmpwi r0, 0
/* 805581A0  41 82 00 24 */	beq lbl_805581C4
/* 805581A4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805581A8  4B BE D5 55 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805581AC  38 00 00 00 */	li r0, 0
/* 805581B0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 805581B4  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805581B8  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 805581BC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805581C0  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_805581C4:
/* 805581C4  38 00 00 00 */	li r0, 0
/* 805581C8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805581CC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 805581D0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 805581D4  28 04 00 FF */	cmplwi r4, 0xff
/* 805581D8  41 82 00 34 */	beq lbl_8055820C
/* 805581DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805581E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805581E4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805581E8  7C 05 07 74 */	extsb r5, r0
/* 805581EC  4B AD D1 75 */	bl isSwitch__10dSv_info_cCFii
/* 805581F0  2C 03 00 00 */	cmpwi r3, 0
/* 805581F4  41 82 00 18 */	beq lbl_8055820C
/* 805581F8  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 805581FC  2C 00 00 12 */	cmpwi r0, 0x12
/* 80558200  41 82 00 0C */	beq lbl_8055820C
/* 80558204  38 00 00 01 */	li r0, 1
/* 80558208  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_8055820C:
/* 8055820C  38 00 00 00 */	li r0, 0
/* 80558210  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80558214  48 00 02 70 */	b lbl_80558484
lbl_80558218:
/* 80558218  2C 00 00 09 */	cmpwi r0, 9
/* 8055821C  41 82 00 8C */	beq lbl_805582A8
/* 80558220  40 80 00 90 */	bge lbl_805582B0
/* 80558224  2C 00 00 07 */	cmpwi r0, 7
/* 80558228  40 80 00 88 */	bge lbl_805582B0
/* 8055822C  2C 00 00 05 */	cmpwi r0, 5
/* 80558230  40 80 00 08 */	bge lbl_80558238
/* 80558234  48 00 00 7C */	b lbl_805582B0
lbl_80558238:
/* 80558238  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 8055823C  4B BE D4 C1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80558240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80558244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80558248  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 8055824C  38 80 0D 02 */	li r4, 0xd02
/* 80558250  4B AD C7 6D */	bl isEventBit__11dSv_event_cCFUs
/* 80558254  2C 03 00 00 */	cmpwi r3, 0
/* 80558258  41 82 00 18 */	beq lbl_80558270
/* 8055825C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80558260  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80558264  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80558268  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8055826C  4B BE D4 75 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
lbl_80558270:
/* 80558270  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80558274  2C 00 00 00 */	cmpwi r0, 0
/* 80558278  41 82 00 24 */	beq lbl_8055829C
/* 8055827C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80558280  4B BE D4 7D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80558284  38 00 00 00 */	li r0, 0
/* 80558288  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8055828C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80558290  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80558294  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80558298  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8055829C:
/* 8055829C  38 00 00 00 */	li r0, 0
/* 805582A0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805582A4  48 00 00 0C */	b lbl_805582B0
lbl_805582A8:
/* 805582A8  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 805582AC  4B BE D4 51 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_805582B0:
/* 805582B0  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 805582B4  4B BE D4 55 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805582B8  28 03 00 00 */	cmplwi r3, 0
/* 805582BC  41 82 01 00 */	beq lbl_805583BC
/* 805582C0  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 805582C4  28 00 00 00 */	cmplwi r0, 0
/* 805582C8  40 82 00 F4 */	bne lbl_805583BC
/* 805582CC  88 1E 10 18 */	lbz r0, 0x1018(r30)
/* 805582D0  28 00 00 00 */	cmplwi r0, 0
/* 805582D4  40 82 00 E8 */	bne lbl_805583BC
/* 805582D8  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 805582DC  28 00 00 05 */	cmplwi r0, 5
/* 805582E0  41 82 01 A4 */	beq lbl_80558484
/* 805582E4  28 00 00 06 */	cmplwi r0, 6
/* 805582E8  41 82 01 9C */	beq lbl_80558484
/* 805582EC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805582F0  2C 00 00 01 */	cmpwi r0, 1
/* 805582F4  41 82 00 28 */	beq lbl_8055831C
/* 805582F8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805582FC  4B BE D4 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80558300  38 00 00 00 */	li r0, 0
/* 80558304  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80558308  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8055830C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80558310  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80558314  38 00 00 01 */	li r0, 1
/* 80558318  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8055831C:
/* 8055831C  38 00 00 00 */	li r0, 0
/* 80558320  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80558324  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80558328  4B BE D3 E1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8055832C  7C 64 1B 78 */	mr r4, r3
/* 80558330  7F C3 F3 78 */	mr r3, r30
/* 80558334  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80558338  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 8055833C  4B BF 28 95 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80558340  2C 03 00 00 */	cmpwi r3, 0
/* 80558344  40 82 00 4C */	bne lbl_80558390
/* 80558348  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8055834C  2C 00 00 00 */	cmpwi r0, 0
/* 80558350  41 82 00 24 */	beq lbl_80558374
/* 80558354  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80558358  4B BE D3 A5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8055835C  38 00 00 00 */	li r0, 0
/* 80558360  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80558364  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80558368  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8055836C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80558370  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80558374:
/* 80558374  38 00 00 00 */	li r0, 0
/* 80558378  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8055837C  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80558380  28 00 00 0B */	cmplwi r0, 0xb
/* 80558384  40 82 00 0C */	bne lbl_80558390
/* 80558388  38 00 00 01 */	li r0, 1
/* 8055838C  98 1E 10 18 */	stb r0, 0x1018(r30)
lbl_80558390:
/* 80558390  7F C3 F3 78 */	mr r3, r30
/* 80558394  4B BF 2F A5 */	bl srchPlayerActor__8daNpcT_cFv
/* 80558398  2C 03 00 00 */	cmpwi r3, 0
/* 8055839C  40 82 00 E8 */	bne lbl_80558484
/* 805583A0  A8 7E 04 B6 */	lha r3, 0x4b6(r30)
/* 805583A4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 805583A8  7C 03 00 00 */	cmpw r3, r0
/* 805583AC  40 82 00 D8 */	bne lbl_80558484
/* 805583B0  38 00 00 01 */	li r0, 1
/* 805583B4  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 805583B8  48 00 00 CC */	b lbl_80558484
lbl_805583BC:
/* 805583BC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805583C0  2C 00 00 00 */	cmpwi r0, 0
/* 805583C4  41 82 00 24 */	beq lbl_805583E8
/* 805583C8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805583CC  4B BE D3 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 805583D0  38 00 00 00 */	li r0, 0
/* 805583D4  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 805583D8  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805583DC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 805583E0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805583E4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_805583E8:
/* 805583E8  38 00 00 00 */	li r0, 0
/* 805583EC  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805583F0  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 805583F4  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 805583F8  7C 04 00 00 */	cmpw r4, r0
/* 805583FC  41 82 00 58 */	beq lbl_80558454
/* 80558400  88 1E 0E 34 */	lbz r0, 0xe34(r30)
/* 80558404  28 00 00 00 */	cmplwi r0, 0
/* 80558408  41 82 00 30 */	beq lbl_80558438
/* 8055840C  7F C3 F3 78 */	mr r3, r30
/* 80558410  38 A0 00 0D */	li r5, 0xd
/* 80558414  38 C0 00 0A */	li r6, 0xa
/* 80558418  38 E0 00 0F */	li r7, 0xf
/* 8055841C  39 00 00 00 */	li r8, 0
/* 80558420  4B BF 32 29 */	bl step__8daNpcT_cFsiiii
/* 80558424  2C 03 00 00 */	cmpwi r3, 0
/* 80558428  41 82 00 20 */	beq lbl_80558448
/* 8055842C  38 00 00 01 */	li r0, 1
/* 80558430  B0 1E 0E 22 */	sth r0, 0xe22(r30)
/* 80558434  48 00 00 14 */	b lbl_80558448
lbl_80558438:
/* 80558438  7F C3 F3 78 */	mr r3, r30
/* 8055843C  4B BF 25 DD */	bl setAngle__8daNpcT_cFs
/* 80558440  38 00 00 01 */	li r0, 1
/* 80558444  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80558448:
/* 80558448  38 00 00 00 */	li r0, 0
/* 8055844C  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80558450  48 00 00 34 */	b lbl_80558484
lbl_80558454:
/* 80558454  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80558458  28 00 00 00 */	cmplwi r0, 0
/* 8055845C  40 82 00 20 */	bne lbl_8055847C
/* 80558460  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80558464  28 00 00 05 */	cmplwi r0, 5
/* 80558468  41 82 00 14 */	beq lbl_8055847C
/* 8055846C  28 00 00 06 */	cmplwi r0, 6
/* 80558470  41 82 00 0C */	beq lbl_8055847C
/* 80558474  7F C3 F3 78 */	mr r3, r30
/* 80558478  4B BF 2E C1 */	bl srchPlayerActor__8daNpcT_cFv
lbl_8055847C:
/* 8055847C  38 00 00 00 */	li r0, 0
/* 80558480  98 1E 10 18 */	stb r0, 0x1018(r30)
lbl_80558484:
/* 80558484  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80558488  2C 00 00 00 */	cmpwi r0, 0
/* 8055848C  41 82 00 08 */	beq lbl_80558494
/* 80558490  48 00 01 CC */	b lbl_8055865C
lbl_80558494:
/* 80558494  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80558498  2C 00 00 07 */	cmpwi r0, 7
/* 8055849C  40 80 00 1C */	bge lbl_805584B8
/* 805584A0  2C 00 00 04 */	cmpwi r0, 4
/* 805584A4  41 82 01 B8 */	beq lbl_8055865C
/* 805584A8  40 80 00 BC */	bge lbl_80558564
/* 805584AC  2C 00 00 03 */	cmpwi r0, 3
/* 805584B0  40 80 00 14 */	bge lbl_805584C4
/* 805584B4  48 00 01 A8 */	b lbl_8055865C
lbl_805584B8:
/* 805584B8  2C 00 00 0B */	cmpwi r0, 0xb
/* 805584BC  41 82 01 00 */	beq lbl_805585BC
/* 805584C0  48 00 01 9C */	b lbl_8055865C
lbl_805584C4:
/* 805584C4  38 7E 0F A0 */	addi r3, r30, 0xfa0
/* 805584C8  4B BE D2 41 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805584CC  7C 7D 1B 79 */	or. r29, r3, r3
/* 805584D0  41 82 01 8C */	beq lbl_8055865C
/* 805584D4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805584D8  4B BE D2 31 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805584DC  7C 63 E8 50 */	subf r3, r3, r29
/* 805584E0  30 03 FF FF */	addic r0, r3, -1
/* 805584E4  7C 00 19 10 */	subfe r0, r0, r3
/* 805584E8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805584EC  40 82 00 10 */	bne lbl_805584FC
/* 805584F0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805584F4  2C 00 00 02 */	cmpwi r0, 2
/* 805584F8  41 82 00 30 */	beq lbl_80558528
lbl_805584FC:
/* 805584FC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80558500  4B BE D1 FD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80558504  38 00 00 00 */	li r0, 0
/* 80558508  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8055850C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80558510  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80558514  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80558518  38 00 00 02 */	li r0, 2
/* 8055851C  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 80558520  38 00 00 01 */	li r0, 1
/* 80558524  48 00 00 08 */	b lbl_8055852C
lbl_80558528:
/* 80558528  38 00 00 00 */	li r0, 0
lbl_8055852C:
/* 8055852C  2C 00 00 00 */	cmpwi r0, 0
/* 80558530  41 82 00 28 */	beq lbl_80558558
/* 80558534  7F A3 EB 78 */	mr r3, r29
/* 80558538  4B AC 07 A9 */	bl fopAc_IsActor__FPv
/* 8055853C  2C 03 00 00 */	cmpwi r3, 0
/* 80558540  41 82 00 18 */	beq lbl_80558558
/* 80558544  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80558548  7F A4 EB 78 */	mr r4, r29
/* 8055854C  4B BE D1 95 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 80558550  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 80558554  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_80558558:
/* 80558558  38 00 00 00 */	li r0, 0
/* 8055855C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80558560  48 00 00 FC */	b lbl_8055865C
lbl_80558564:
/* 80558564  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80558568  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8055856C  38 63 0D D8 */	addi r3, r3, 0xdd8
/* 80558570  38 80 0E 40 */	li r4, 0xe40
/* 80558574  4B AD C4 49 */	bl isEventBit__11dSv_event_cCFUs
/* 80558578  2C 03 00 00 */	cmpwi r3, 0
/* 8055857C  41 82 00 E0 */	beq lbl_8055865C
/* 80558580  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80558584  2C 00 00 01 */	cmpwi r0, 1
/* 80558588  41 82 00 28 */	beq lbl_805585B0
/* 8055858C  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80558590  4B BE D1 6D */	bl remove__18daNpcT_ActorMngr_cFv
/* 80558594  38 00 00 00 */	li r0, 0
/* 80558598  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8055859C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 805585A0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 805585A4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805585A8  38 00 00 01 */	li r0, 1
/* 805585AC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_805585B0:
/* 805585B0  38 00 00 00 */	li r0, 0
/* 805585B4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 805585B8  48 00 00 A4 */	b lbl_8055865C
lbl_805585BC:
/* 805585BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805585C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805585C4  83 A3 5D B8 */	lwz r29, 0x5db8(r3)
/* 805585C8  28 1D 00 00 */	cmplwi r29, 0
/* 805585CC  41 82 00 90 */	beq lbl_8055865C
/* 805585D0  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805585D4  4B BE D1 35 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 805585D8  7C 63 E8 50 */	subf r3, r3, r29
/* 805585DC  30 03 FF FF */	addic r0, r3, -1
/* 805585E0  7C 00 19 10 */	subfe r0, r0, r3
/* 805585E4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 805585E8  40 82 00 10 */	bne lbl_805585F8
/* 805585EC  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 805585F0  2C 00 00 02 */	cmpwi r0, 2
/* 805585F4  41 82 00 30 */	beq lbl_80558624
lbl_805585F8:
/* 805585F8  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 805585FC  4B BE D1 01 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80558600  38 00 00 00 */	li r0, 0
/* 80558604  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80558608  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 8055860C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80558610  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80558614  38 00 00 02 */	li r0, 2
/* 80558618  90 1E 0C E0 */	stw r0, 0xce0(r30)
/* 8055861C  38 00 00 01 */	li r0, 1
/* 80558620  48 00 00 08 */	b lbl_80558628
lbl_80558624:
/* 80558624  38 00 00 00 */	li r0, 0
lbl_80558628:
/* 80558628  2C 00 00 00 */	cmpwi r0, 0
/* 8055862C  41 82 00 28 */	beq lbl_80558654
/* 80558630  7F A3 EB 78 */	mr r3, r29
/* 80558634  4B AC 06 AD */	bl fopAc_IsActor__FPv
/* 80558638  2C 03 00 00 */	cmpwi r3, 0
/* 8055863C  41 82 00 18 */	beq lbl_80558654
/* 80558640  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80558644  7F A4 EB 78 */	mr r4, r29
/* 80558648  4B BE D0 99 */	bl entry__18daNpcT_ActorMngr_cFP10fopAc_ac_c
/* 8055864C  C0 1F 01 BC */	lfs f0, 0x1bc(r31)
/* 80558650  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
lbl_80558654:
/* 80558654  38 00 00 00 */	li r0, 0
/* 80558658  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_8055865C:
/* 8055865C  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80558660  2C 00 00 07 */	cmpwi r0, 7
/* 80558664  40 80 00 18 */	bge lbl_8055867C
/* 80558668  2C 00 00 05 */	cmpwi r0, 5
/* 8055866C  40 80 00 08 */	bge lbl_80558674
/* 80558670  48 00 00 0C */	b lbl_8055867C
lbl_80558674:
/* 80558674  38 00 00 00 */	li r0, 0
/* 80558678  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_8055867C:
/* 8055867C  38 60 00 01 */	li r3, 1
/* 80558680  39 61 00 20 */	addi r11, r1, 0x20
/* 80558684  4B E0 9B A5 */	bl _restgpr_29
/* 80558688  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055868C  7C 08 03 A6 */	mtlr r0
/* 80558690  38 21 00 20 */	addi r1, r1, 0x20
/* 80558694  4E 80 00 20 */	blr 

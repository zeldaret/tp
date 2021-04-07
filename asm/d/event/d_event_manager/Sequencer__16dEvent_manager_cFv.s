lbl_80046E64:
/* 80046E64  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80046E68  7C 08 02 A6 */	mflr r0
/* 80046E6C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80046E70  39 61 00 70 */	addi r11, r1, 0x70
/* 80046E74  48 31 B3 55 */	bl _savegpr_24
/* 80046E78  7C 7E 1B 78 */	mr r30, r3
/* 80046E7C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80046E80  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80046E84  3B E4 4E C8 */	addi r31, r4, 0x4ec8
/* 80046E88  A8 83 01 AA */	lha r4, 0x1aa(r3)
/* 80046E8C  48 00 06 31 */	bl getEventData__16dEvent_manager_cFs
/* 80046E90  7C 7D 1B 78 */	mr r29, r3
/* 80046E94  7F E3 FB 78 */	mr r3, r31
/* 80046E98  4B FF C3 E1 */	bl getStageEventDt__14dEvt_control_cFv
/* 80046E9C  7C 7C 1B 78 */	mr r28, r3
/* 80046EA0  28 1D 00 00 */	cmplwi r29, 0
/* 80046EA4  41 82 05 24 */	beq lbl_800473C8
/* 80046EA8  A0 1F 00 D8 */	lhz r0, 0xd8(r31)
/* 80046EAC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80046EB0  41 82 01 14 */	beq lbl_80046FC4
/* 80046EB4  3B 60 00 00 */	li r27, 0
/* 80046EB8  28 1C 00 00 */	cmplwi r28, 0
/* 80046EBC  41 82 00 F8 */	beq lbl_80046FB4
/* 80046EC0  88 1C 00 00 */	lbz r0, 0(r28)
/* 80046EC4  2C 00 00 00 */	cmpwi r0, 0
/* 80046EC8  41 82 00 14 */	beq lbl_80046EDC
/* 80046ECC  41 80 00 10 */	blt lbl_80046EDC
/* 80046ED0  2C 00 00 03 */	cmpwi r0, 3
/* 80046ED4  40 80 00 08 */	bge lbl_80046EDC
/* 80046ED8  3B 7C 00 0D */	addi r27, r28, 0xd
lbl_80046EDC:
/* 80046EDC  88 7C 00 08 */	lbz r3, 8(r28)
/* 80046EE0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80046EE4  41 82 00 D0 */	beq lbl_80046FB4
/* 80046EE8  A0 1F 00 DA */	lhz r0, 0xda(r31)
/* 80046EEC  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80046EF0  40 82 00 C4 */	bne lbl_80046FB4
/* 80046EF4  54 60 FF BE */	rlwinm r0, r3, 0x1f, 0x1e, 0x1f
/* 80046EF8  2C 00 00 02 */	cmpwi r0, 2
/* 80046EFC  40 82 00 0C */	bne lbl_80046F08
/* 80046F00  7F E3 FB 78 */	mr r3, r31
/* 80046F04  4B FF BA A5 */	bl onSkipFade__14dEvt_control_cFv
lbl_80046F08:
/* 80046F08  7F E3 FB 78 */	mr r3, r31
/* 80046F0C  80 9F 00 C4 */	lwz r4, 0xc4(r31)
/* 80046F10  4B FF C3 DD */	bl convPId__14dEvt_control_cFUi
/* 80046F14  7C 64 1B 78 */	mr r4, r3
/* 80046F18  28 03 00 00 */	cmplwi r3, 0
/* 80046F1C  40 82 00 14 */	bne lbl_80046F30
/* 80046F20  7F E3 FB 78 */	mr r3, r31
/* 80046F24  80 9F 00 C8 */	lwz r4, 0xc8(r31)
/* 80046F28  4B FF C3 C5 */	bl convPId__14dEvt_control_cFUi
/* 80046F2C  7C 64 1B 78 */	mr r4, r3
lbl_80046F30:
/* 80046F30  28 04 00 00 */	cmplwi r4, 0
/* 80046F34  40 82 00 10 */	bne lbl_80046F44
/* 80046F38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80046F3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80046F40  80 83 5D AC */	lwz r4, 0x5dac(r3)
lbl_80046F44:
/* 80046F44  28 04 00 00 */	cmplwi r4, 0
/* 80046F48  41 82 00 6C */	beq lbl_80046FB4
/* 80046F4C  88 1C 00 00 */	lbz r0, 0(r28)
/* 80046F50  2C 00 00 01 */	cmpwi r0, 1
/* 80046F54  41 82 00 34 */	beq lbl_80046F88
/* 80046F58  40 80 00 10 */	bge lbl_80046F68
/* 80046F5C  2C 00 00 00 */	cmpwi r0, 0
/* 80046F60  40 80 00 40 */	bge lbl_80046FA0
/* 80046F64  48 00 00 50 */	b lbl_80046FB4
lbl_80046F68:
/* 80046F68  2C 00 00 03 */	cmpwi r0, 3
/* 80046F6C  40 80 00 48 */	bge lbl_80046FB4
/* 80046F70  7F E3 FB 78 */	mr r3, r31
/* 80046F74  3C A0 80 04 */	lis r5, dEv_defaultSkipStb__FPvi@ha /* 0x80042778@ha */
/* 80046F78  38 A5 27 78 */	addi r5, r5, dEv_defaultSkipStb__FPvi@l /* 0x80042778@l */
/* 80046F7C  38 C0 00 00 */	li r6, 0
/* 80046F80  4B FF B9 95 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80046F84  48 00 00 30 */	b lbl_80046FB4
lbl_80046F88:
/* 80046F88  7F E3 FB 78 */	mr r3, r31
/* 80046F8C  3C A0 80 04 */	lis r5, dEv_defaultSkipZev__FPvi@ha /* 0x8004261C@ha */
/* 80046F90  38 A5 26 1C */	addi r5, r5, dEv_defaultSkipZev__FPvi@l /* 0x8004261C@l */
/* 80046F94  38 C0 00 00 */	li r6, 0
/* 80046F98  4B FF B9 7D */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80046F9C  48 00 00 18 */	b lbl_80046FB4
lbl_80046FA0:
/* 80046FA0  7F E3 FB 78 */	mr r3, r31
/* 80046FA4  3C A0 80 04 */	lis r5, dEv_defaultSkipProc__FPvi@ha /* 0x800425E8@ha */
/* 80046FA8  38 A5 25 E8 */	addi r5, r5, dEv_defaultSkipProc__FPvi@l /* 0x800425E8@l */
/* 80046FAC  38 C0 00 00 */	li r6, 0
/* 80046FB0  4B FF B9 65 */	bl setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80046FB4:
/* 80046FB4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80046FB8  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80046FBC  7F 64 DB 78 */	mr r4, r27
/* 80046FC0  48 26 F2 29 */	bl setDemoName__11Z2StatusMgrFPc
lbl_80046FC4:
/* 80046FC4  7F A3 EB 78 */	mr r3, r29
/* 80046FC8  4B FF CE B1 */	bl finishCheck__12dEvDtEvent_cFv
/* 80046FCC  2C 03 00 00 */	cmpwi r3, 0
/* 80046FD0  41 82 03 C0 */	beq lbl_80047390
/* 80046FD4  3B 40 00 00 */	li r26, 0
/* 80046FD8  A0 7F 00 DA */	lhz r3, 0xda(r31)
/* 80046FDC  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80046FE0  41 82 00 08 */	beq lbl_80046FE8
/* 80046FE4  3B 40 00 01 */	li r26, 1
lbl_80046FE8:
/* 80046FE8  3B 20 FF FF */	li r25, -1
/* 80046FEC  54 63 07 BC */	rlwinm r3, r3, 0, 0x1e, 0x1e
/* 80046FF0  30 03 FF FF */	addic r0, r3, -1
/* 80046FF4  7F 00 19 10 */	subfe r24, r0, r3
/* 80046FF8  28 1C 00 00 */	cmplwi r28, 0
/* 80046FFC  41 82 03 60 */	beq lbl_8004735C
/* 80047000  88 1C 00 08 */	lbz r0, 8(r28)
/* 80047004  54 1B FF BE */	rlwinm r27, r0, 0x1f, 0x1e, 0x1f
/* 80047008  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 8004700C  41 82 01 CC */	beq lbl_800471D8
/* 80047010  2C 1B 00 01 */	cmpwi r27, 1
/* 80047014  41 82 01 C4 */	beq lbl_800471D8
/* 80047018  3B 40 00 01 */	li r26, 1
/* 8004701C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80047020  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80047024  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80047028  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 8004702C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80047030  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 80047034  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80047038  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 8004703C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80047040  48 13 A6 01 */	bl dCam_getBody__Fv
/* 80047044  7C 64 1B 78 */	mr r4, r3
/* 80047048  38 61 00 2C */	addi r3, r1, 0x2c
/* 8004704C  48 13 AE 4D */	bl Center__9dCamera_cFv
/* 80047050  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80047054  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80047058  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8004705C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80047060  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80047064  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80047068  38 61 00 20 */	addi r3, r1, 0x20
/* 8004706C  38 81 00 44 */	addi r4, r1, 0x44
/* 80047070  38 A1 00 38 */	addi r5, r1, 0x38
/* 80047074  48 21 FA C1 */	bl __mi__4cXyzCFRC3Vec
/* 80047078  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8004707C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80047080  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80047084  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80047088  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8004708C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80047090  38 61 00 14 */	addi r3, r1, 0x14
/* 80047094  48 30 00 A5 */	bl PSVECSquareMag
/* 80047098  C0 02 85 00 */	lfs f0, lit_4398(r2)
/* 8004709C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800470A0  40 81 00 58 */	ble lbl_800470F8
/* 800470A4  FC 00 08 34 */	frsqrte f0, f1
/* 800470A8  C8 82 85 08 */	lfd f4, lit_4399(r2)
/* 800470AC  FC 44 00 32 */	fmul f2, f4, f0
/* 800470B0  C8 62 85 10 */	lfd f3, lit_4400(r2)
/* 800470B4  FC 00 00 32 */	fmul f0, f0, f0
/* 800470B8  FC 01 00 32 */	fmul f0, f1, f0
/* 800470BC  FC 03 00 28 */	fsub f0, f3, f0
/* 800470C0  FC 02 00 32 */	fmul f0, f2, f0
/* 800470C4  FC 44 00 32 */	fmul f2, f4, f0
/* 800470C8  FC 00 00 32 */	fmul f0, f0, f0
/* 800470CC  FC 01 00 32 */	fmul f0, f1, f0
/* 800470D0  FC 03 00 28 */	fsub f0, f3, f0
/* 800470D4  FC 02 00 32 */	fmul f0, f2, f0
/* 800470D8  FC 44 00 32 */	fmul f2, f4, f0
/* 800470DC  FC 00 00 32 */	fmul f0, f0, f0
/* 800470E0  FC 01 00 32 */	fmul f0, f1, f0
/* 800470E4  FC 03 00 28 */	fsub f0, f3, f0
/* 800470E8  FC 02 00 32 */	fmul f0, f2, f0
/* 800470EC  FC 21 00 32 */	fmul f1, f1, f0
/* 800470F0  FC 20 08 18 */	frsp f1, f1
/* 800470F4  48 00 00 88 */	b lbl_8004717C
lbl_800470F8:
/* 800470F8  C8 02 85 18 */	lfd f0, lit_4401(r2)
/* 800470FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80047100  40 80 00 10 */	bge lbl_80047110
/* 80047104  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80047108  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8004710C  48 00 00 70 */	b lbl_8004717C
lbl_80047110:
/* 80047110  D0 21 00 08 */	stfs f1, 8(r1)
/* 80047114  80 81 00 08 */	lwz r4, 8(r1)
/* 80047118  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8004711C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80047120  7C 03 00 00 */	cmpw r3, r0
/* 80047124  41 82 00 14 */	beq lbl_80047138
/* 80047128  40 80 00 40 */	bge lbl_80047168
/* 8004712C  2C 03 00 00 */	cmpwi r3, 0
/* 80047130  41 82 00 20 */	beq lbl_80047150
/* 80047134  48 00 00 34 */	b lbl_80047168
lbl_80047138:
/* 80047138  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8004713C  41 82 00 0C */	beq lbl_80047148
/* 80047140  38 00 00 01 */	li r0, 1
/* 80047144  48 00 00 28 */	b lbl_8004716C
lbl_80047148:
/* 80047148  38 00 00 02 */	li r0, 2
/* 8004714C  48 00 00 20 */	b lbl_8004716C
lbl_80047150:
/* 80047150  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80047154  41 82 00 0C */	beq lbl_80047160
/* 80047158  38 00 00 05 */	li r0, 5
/* 8004715C  48 00 00 10 */	b lbl_8004716C
lbl_80047160:
/* 80047160  38 00 00 03 */	li r0, 3
/* 80047164  48 00 00 08 */	b lbl_8004716C
lbl_80047168:
/* 80047168  38 00 00 04 */	li r0, 4
lbl_8004716C:
/* 8004716C  2C 00 00 01 */	cmpwi r0, 1
/* 80047170  40 82 00 0C */	bne lbl_8004717C
/* 80047174  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80047178  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8004717C:
/* 8004717C  2C 1B 00 00 */	cmpwi r27, 0
/* 80047180  40 82 00 1C */	bne lbl_8004719C
/* 80047184  C0 02 85 20 */	lfs f0, lit_4402(r2)
/* 80047188  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8004718C  40 81 00 4C */	ble lbl_800471D8
/* 80047190  48 13 A4 B1 */	bl dCam_getBody__Fv
/* 80047194  48 13 98 AD */	bl EventRecoverNotime__9dCamera_cFv
/* 80047198  48 00 00 40 */	b lbl_800471D8
lbl_8004719C:
/* 8004719C  88 1C 00 03 */	lbz r0, 3(r28)
/* 800471A0  2C 00 00 03 */	cmpwi r0, 3
/* 800471A4  41 82 00 2C */	beq lbl_800471D0
/* 800471A8  40 80 00 30 */	bge lbl_800471D8
/* 800471AC  2C 00 00 01 */	cmpwi r0, 1
/* 800471B0  40 80 00 08 */	bge lbl_800471B8
/* 800471B4  48 00 00 24 */	b lbl_800471D8
lbl_800471B8:
/* 800471B8  C0 02 85 20 */	lfs f0, lit_4402(r2)
/* 800471BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800471C0  40 81 00 18 */	ble lbl_800471D8
/* 800471C4  48 13 A4 7D */	bl dCam_getBody__Fv
/* 800471C8  48 13 98 79 */	bl EventRecoverNotime__9dCamera_cFv
/* 800471CC  48 00 00 0C */	b lbl_800471D8
lbl_800471D0:
/* 800471D0  48 13 A4 71 */	bl dCam_getBody__Fv
/* 800471D4  48 13 98 6D */	bl EventRecoverNotime__9dCamera_cFv
lbl_800471D8:
/* 800471D8  88 1C 00 00 */	lbz r0, 0(r28)
/* 800471DC  2C 00 00 01 */	cmpwi r0, 1
/* 800471E0  41 82 01 38 */	beq lbl_80047318
/* 800471E4  40 80 00 10 */	bge lbl_800471F4
/* 800471E8  2C 00 00 00 */	cmpwi r0, 0
/* 800471EC  40 80 00 14 */	bge lbl_80047200
/* 800471F0  48 00 01 6C */	b lbl_8004735C
lbl_800471F4:
/* 800471F4  2C 00 00 03 */	cmpwi r0, 3
/* 800471F8  40 80 01 64 */	bge lbl_8004735C
/* 800471FC  48 00 00 D4 */	b lbl_800472D0
lbl_80047200:
/* 80047200  88 1C 00 18 */	lbz r0, 0x18(r28)
/* 80047204  2C 00 00 02 */	cmpwi r0, 2
/* 80047208  41 82 00 4C */	beq lbl_80047254
/* 8004720C  40 80 00 7C */	bge lbl_80047288
/* 80047210  2C 00 00 01 */	cmpwi r0, 1
/* 80047214  40 80 00 08 */	bge lbl_8004721C
/* 80047218  48 00 00 70 */	b lbl_80047288
lbl_8004721C:
/* 8004721C  38 00 00 0C */	li r0, 0xc
/* 80047220  90 01 00 10 */	stw r0, 0x10(r1)
/* 80047224  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80047228  38 81 00 10 */	addi r4, r1, 0x10
/* 8004722C  38 A0 00 00 */	li r5, 0
/* 80047230  38 C0 00 00 */	li r6, 0
/* 80047234  38 E0 00 00 */	li r7, 0
/* 80047238  C0 22 85 24 */	lfs f1, lit_4403(r2)
/* 8004723C  FC 40 08 90 */	fmr f2, f1
/* 80047240  C0 62 85 28 */	lfs f3, lit_4404(r2)
/* 80047244  FC 80 18 90 */	fmr f4, f3
/* 80047248  39 00 00 00 */	li r8, 0
/* 8004724C  48 26 47 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80047250  48 00 00 38 */	b lbl_80047288
lbl_80047254:
/* 80047254  38 00 00 0D */	li r0, 0xd
/* 80047258  90 01 00 0C */	stw r0, 0xc(r1)
/* 8004725C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80047260  38 81 00 0C */	addi r4, r1, 0xc
/* 80047264  38 A0 00 00 */	li r5, 0
/* 80047268  38 C0 00 00 */	li r6, 0
/* 8004726C  38 E0 00 00 */	li r7, 0
/* 80047270  C0 22 85 24 */	lfs f1, lit_4403(r2)
/* 80047274  FC 40 08 90 */	fmr f2, f1
/* 80047278  C0 62 85 28 */	lfs f3, lit_4404(r2)
/* 8004727C  FC 80 18 90 */	fmr f4, f3
/* 80047280  39 00 00 00 */	li r8, 0
/* 80047284  48 26 47 01 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80047288:
/* 80047288  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8004728C  40 82 00 D0 */	bne lbl_8004735C
/* 80047290  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80047294  41 82 00 20 */	beq lbl_800472B4
/* 80047298  88 9C 00 09 */	lbz r4, 9(r28)
/* 8004729C  28 04 00 FF */	cmplwi r4, 0xff
/* 800472A0  41 82 00 14 */	beq lbl_800472B4
/* 800472A4  7C 99 23 78 */	mr r25, r4
/* 800472A8  7F E3 FB 78 */	mr r3, r31
/* 800472AC  4B FF BF D5 */	bl sceneChange__14dEvt_control_cFi
/* 800472B0  48 00 00 AC */	b lbl_8004735C
lbl_800472B4:
/* 800472B4  88 9C 00 17 */	lbz r4, 0x17(r28)
/* 800472B8  28 04 00 FF */	cmplwi r4, 0xff
/* 800472BC  41 82 00 A0 */	beq lbl_8004735C
/* 800472C0  7C 99 23 78 */	mr r25, r4
/* 800472C4  7F E3 FB 78 */	mr r3, r31
/* 800472C8  4B FF BF B9 */	bl sceneChange__14dEvt_control_cFi
/* 800472CC  48 00 00 90 */	b lbl_8004735C
lbl_800472D0:
/* 800472D0  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 800472D4  40 82 00 88 */	bne lbl_8004735C
/* 800472D8  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 800472DC  41 82 00 20 */	beq lbl_800472FC
/* 800472E0  88 9C 00 09 */	lbz r4, 9(r28)
/* 800472E4  28 04 00 FF */	cmplwi r4, 0xff
/* 800472E8  41 82 00 14 */	beq lbl_800472FC
/* 800472EC  7C 99 23 78 */	mr r25, r4
/* 800472F0  7F E3 FB 78 */	mr r3, r31
/* 800472F4  4B FF BF 8D */	bl sceneChange__14dEvt_control_cFi
/* 800472F8  48 00 00 64 */	b lbl_8004735C
lbl_800472FC:
/* 800472FC  88 9C 00 07 */	lbz r4, 7(r28)
/* 80047300  28 04 00 FF */	cmplwi r4, 0xff
/* 80047304  41 82 00 58 */	beq lbl_8004735C
/* 80047308  7C 99 23 78 */	mr r25, r4
/* 8004730C  7F E3 FB 78 */	mr r3, r31
/* 80047310  4B FF BF 71 */	bl sceneChange__14dEvt_control_cFi
/* 80047314  48 00 00 48 */	b lbl_8004735C
lbl_80047318:
/* 80047318  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 8004731C  40 82 00 40 */	bne lbl_8004735C
/* 80047320  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80047324  41 82 00 20 */	beq lbl_80047344
/* 80047328  88 9C 00 09 */	lbz r4, 9(r28)
/* 8004732C  28 04 00 FF */	cmplwi r4, 0xff
/* 80047330  41 82 00 14 */	beq lbl_80047344
/* 80047334  7C 99 23 78 */	mr r25, r4
/* 80047338  7F E3 FB 78 */	mr r3, r31
/* 8004733C  4B FF BF 45 */	bl sceneChange__14dEvt_control_cFi
/* 80047340  48 00 00 1C */	b lbl_8004735C
lbl_80047344:
/* 80047344  88 9C 00 07 */	lbz r4, 7(r28)
/* 80047348  28 04 00 FF */	cmplwi r4, 0xff
/* 8004734C  41 82 00 10 */	beq lbl_8004735C
/* 80047350  7C 99 23 78 */	mr r25, r4
/* 80047354  7F E3 FB 78 */	mr r3, r31
/* 80047358  4B FF BF 29 */	bl sceneChange__14dEvt_control_cFi
lbl_8004735C:
/* 8004735C  2C 19 FF FF */	cmpwi r25, -1
/* 80047360  40 82 00 50 */	bne lbl_800473B0
/* 80047364  80 1E 01 B4 */	lwz r0, 0x1b4(r30)
/* 80047368  1C 00 00 24 */	mulli r0, r0, 0x24
/* 8004736C  7C 7E 02 14 */	add r3, r30, r0
/* 80047370  7F A4 EB 78 */	mr r4, r29
/* 80047374  4B FF EF 19 */	bl advanceCut__11dEvDtBase_cFP12dEvDtEvent_c
/* 80047378  7F C3 F3 78 */	mr r3, r30
/* 8004737C  7F A4 EB 78 */	mr r4, r29
/* 80047380  4B FF FA 21 */	bl closeProc__16dEvent_manager_cFP12dEvDtEvent_c
/* 80047384  7F E3 FB 78 */	mr r3, r31
/* 80047388  4B FF B0 E1 */	bl reset__14dEvt_control_cFv
/* 8004738C  48 00 00 24 */	b lbl_800473B0
lbl_80047390:
/* 80047390  80 1D 00 A4 */	lwz r0, 0xa4(r29)
/* 80047394  2C 00 00 01 */	cmpwi r0, 1
/* 80047398  40 82 00 18 */	bne lbl_800473B0
/* 8004739C  80 1E 01 B4 */	lwz r0, 0x1b4(r30)
/* 800473A0  1C 00 00 24 */	mulli r0, r0, 0x24
/* 800473A4  7C 7E 02 14 */	add r3, r30, r0
/* 800473A8  7F A4 EB 78 */	mr r4, r29
/* 800473AC  4B FF EE E1 */	bl advanceCut__11dEvDtBase_cFP12dEvDtEvent_c
lbl_800473B0:
/* 800473B0  80 7E 01 B8 */	lwz r3, 0x1b8(r30)
/* 800473B4  2C 03 00 00 */	cmpwi r3, 0
/* 800473B8  41 82 00 2C */	beq lbl_800473E4
/* 800473BC  38 03 FF FF */	addi r0, r3, -1
/* 800473C0  90 1E 01 B8 */	stw r0, 0x1b8(r30)
/* 800473C4  48 00 00 20 */	b lbl_800473E4
lbl_800473C8:
/* 800473C8  A0 1F 00 D8 */	lhz r0, 0xd8(r31)
/* 800473CC  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 800473D0  41 82 00 14 */	beq lbl_800473E4
/* 800473D4  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800473D8  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 800473DC  38 80 00 00 */	li r4, 0
/* 800473E0  48 26 EE 09 */	bl setDemoName__11Z2StatusMgrFPc
lbl_800473E4:
/* 800473E4  39 61 00 70 */	addi r11, r1, 0x70
/* 800473E8  48 31 AE 2D */	bl _restgpr_24
/* 800473EC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800473F0  7C 08 03 A6 */	mtlr r0
/* 800473F4  38 21 00 70 */	addi r1, r1, 0x70
/* 800473F8  4E 80 00 20 */	blr 

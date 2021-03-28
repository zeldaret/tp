lbl_80ADEEE4:
/* 80ADEEE4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80ADEEE8  7C 08 02 A6 */	mflr r0
/* 80ADEEEC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80ADEEF0  39 61 00 50 */	addi r11, r1, 0x50
/* 80ADEEF4  4B 88 32 D8 */	b _savegpr_25
/* 80ADEEF8  7C 7A 1B 78 */	mr r26, r3
/* 80ADEEFC  7C 9B 23 78 */	mr r27, r4
/* 80ADEF00  3C 60 80 AE */	lis r3, m__17daNpcShad_Param_c@ha
/* 80ADEF04  3B A3 1F DC */	addi r29, r3, m__17daNpcShad_Param_c@l
/* 80ADEF08  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADEF0C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80ADEF10  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80ADEF14  7F 83 E3 78 */	mr r3, r28
/* 80ADEF18  4B 56 90 44 */	b getMyNowCutName__16dEvent_manager_cFi
/* 80ADEF1C  7C 7F 1B 78 */	mr r31, r3
/* 80ADEF20  7F 83 E3 78 */	mr r3, r28
/* 80ADEF24  7F 64 DB 78 */	mr r4, r27
/* 80ADEF28  4B 56 8E 24 */	b getIsAddvance__16dEvent_manager_cFi
/* 80ADEF2C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADEF30  41 82 02 3C */	beq lbl_80ADF16C
/* 80ADEF34  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ADEF38  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303034@ha */
/* 80ADEF3C  38 03 30 34 */	addi r0, r3, 0x3034 /* 0x30303034@l */
/* 80ADEF40  7C 04 00 00 */	cmpw r4, r0
/* 80ADEF44  41 82 00 54 */	beq lbl_80ADEF98
/* 80ADEF48  40 80 00 24 */	bge lbl_80ADEF6C
/* 80ADEF4C  38 03 30 32 */	addi r0, r3, 0x3032
/* 80ADEF50  7C 04 00 00 */	cmpw r4, r0
/* 80ADEF54  41 82 00 BC */	beq lbl_80ADF010
/* 80ADEF58  40 80 01 B8 */	bge lbl_80ADF110
/* 80ADEF5C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ADEF60  7C 04 00 00 */	cmpw r4, r0
/* 80ADEF64  40 80 00 1C */	bge lbl_80ADEF80
/* 80ADEF68  48 00 02 04 */	b lbl_80ADF16C
lbl_80ADEF6C:
/* 80ADEF6C  38 03 30 36 */	addi r0, r3, 0x3036
/* 80ADEF70  7C 04 00 00 */	cmpw r4, r0
/* 80ADEF74  41 82 01 F0 */	beq lbl_80ADF164
/* 80ADEF78  40 80 01 F4 */	bge lbl_80ADF16C
/* 80ADEF7C  48 00 01 94 */	b lbl_80ADF110
lbl_80ADEF80:
/* 80ADEF80  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80ADEF84  7F 44 D3 78 */	mr r4, r26
/* 80ADEF88  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80ADEF8C  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 80ADEF90  38 C0 00 00 */	li r6, 0
/* 80ADEF94  4B 56 39 80 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80ADEF98:
/* 80ADEF98  7F 43 D3 78 */	mr r3, r26
/* 80ADEF9C  38 80 00 0C */	li r4, 0xc
/* 80ADEFA0  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADEFA4  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADEFA8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADEFAC  7D 89 03 A6 */	mtctr r12
/* 80ADEFB0  4E 80 04 21 */	bctrl 
/* 80ADEFB4  7F 43 D3 78 */	mr r3, r26
/* 80ADEFB8  38 80 00 00 */	li r4, 0
/* 80ADEFBC  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADEFC0  38 A0 00 00 */	li r5, 0
/* 80ADEFC4  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADEFC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADEFCC  7D 89 03 A6 */	mtctr r12
/* 80ADEFD0  4E 80 04 21 */	bctrl 
/* 80ADEFD4  A8 1A 0E 18 */	lha r0, 0xe18(r26)
/* 80ADEFD8  2C 00 00 02 */	cmpwi r0, 2
/* 80ADEFDC  40 82 00 10 */	bne lbl_80ADEFEC
/* 80ADEFE0  80 1A 0C A8 */	lwz r0, 0xca8(r26)
/* 80ADEFE4  28 00 00 00 */	cmplwi r0, 0
/* 80ADEFE8  41 82 00 14 */	beq lbl_80ADEFFC
lbl_80ADEFEC:
/* 80ADEFEC  38 00 00 02 */	li r0, 2
/* 80ADEFF0  B0 1A 0E 18 */	sth r0, 0xe18(r26)
/* 80ADEFF4  38 00 00 00 */	li r0, 0
/* 80ADEFF8  90 1A 0C A8 */	stw r0, 0xca8(r26)
lbl_80ADEFFC:
/* 80ADEFFC  7F 43 D3 78 */	mr r3, r26
/* 80ADF000  38 80 00 44 */	li r4, 0x44
/* 80ADF004  38 A0 00 00 */	li r5, 0
/* 80ADF008  4B 67 4D 14 */	b initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80ADF00C  48 00 01 60 */	b lbl_80ADF16C
lbl_80ADF010:
/* 80ADF010  7F 83 E3 78 */	mr r3, r28
/* 80ADF014  7F 64 DB 78 */	mr r4, r27
/* 80ADF018  3C A0 80 AE */	lis r5, struct_80AE24C4+0x0@ha
/* 80ADF01C  38 A5 24 C4 */	addi r5, r5, struct_80AE24C4+0x0@l
/* 80ADF020  38 A5 01 52 */	addi r5, r5, 0x152
/* 80ADF024  38 C0 00 01 */	li r6, 1
/* 80ADF028  4B 56 90 C4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADF02C  7C 79 1B 78 */	mr r25, r3
/* 80ADF030  7F 83 E3 78 */	mr r3, r28
/* 80ADF034  7F 64 DB 78 */	mr r4, r27
/* 80ADF038  3C A0 80 AE */	lis r5, struct_80AE24C4+0x0@ha
/* 80ADF03C  38 A5 24 C4 */	addi r5, r5, struct_80AE24C4+0x0@l
/* 80ADF040  38 A5 01 56 */	addi r5, r5, 0x156
/* 80ADF044  38 C0 00 03 */	li r6, 3
/* 80ADF048  4B 56 90 A4 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADF04C  7C 64 1B 78 */	mr r4, r3
/* 80ADF050  28 19 00 00 */	cmplwi r25, 0
/* 80ADF054  41 82 00 34 */	beq lbl_80ADF088
/* 80ADF058  C0 19 00 00 */	lfs f0, 0(r25)
/* 80ADF05C  D0 1A 04 D0 */	stfs f0, 0x4d0(r26)
/* 80ADF060  C0 19 00 04 */	lfs f0, 4(r25)
/* 80ADF064  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80ADF068  C0 19 00 08 */	lfs f0, 8(r25)
/* 80ADF06C  D0 1A 04 D8 */	stfs f0, 0x4d8(r26)
/* 80ADF070  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80ADF074  D0 1A 04 BC */	stfs f0, 0x4bc(r26)
/* 80ADF078  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80ADF07C  D0 1A 04 C0 */	stfs f0, 0x4c0(r26)
/* 80ADF080  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80ADF084  D0 1A 04 C4 */	stfs f0, 0x4c4(r26)
lbl_80ADF088:
/* 80ADF088  28 04 00 00 */	cmplwi r4, 0
/* 80ADF08C  41 82 00 14 */	beq lbl_80ADF0A0
/* 80ADF090  7F 43 D3 78 */	mr r3, r26
/* 80ADF094  80 04 00 00 */	lwz r0, 0(r4)
/* 80ADF098  7C 04 07 34 */	extsh r4, r0
/* 80ADF09C  4B 67 51 B4 */	b setAngle__8daNpcF_cFs
lbl_80ADF0A0:
/* 80ADF0A0  7F 43 D3 78 */	mr r3, r26
/* 80ADF0A4  38 80 00 0C */	li r4, 0xc
/* 80ADF0A8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF0AC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF0B0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF0B4  7D 89 03 A6 */	mtctr r12
/* 80ADF0B8  4E 80 04 21 */	bctrl 
/* 80ADF0BC  7F 43 D3 78 */	mr r3, r26
/* 80ADF0C0  38 80 00 00 */	li r4, 0
/* 80ADF0C4  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF0C8  38 A0 00 00 */	li r5, 0
/* 80ADF0CC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF0D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADF0D4  7D 89 03 A6 */	mtctr r12
/* 80ADF0D8  4E 80 04 21 */	bctrl 
/* 80ADF0DC  A8 1A 0E 18 */	lha r0, 0xe18(r26)
/* 80ADF0E0  2C 00 00 01 */	cmpwi r0, 1
/* 80ADF0E4  40 82 00 10 */	bne lbl_80ADF0F4
/* 80ADF0E8  80 1A 0C A8 */	lwz r0, 0xca8(r26)
/* 80ADF0EC  28 00 00 00 */	cmplwi r0, 0
/* 80ADF0F0  41 82 00 14 */	beq lbl_80ADF104
lbl_80ADF0F4:
/* 80ADF0F4  38 00 00 01 */	li r0, 1
/* 80ADF0F8  B0 1A 0E 18 */	sth r0, 0xe18(r26)
/* 80ADF0FC  38 00 00 00 */	li r0, 0
/* 80ADF100  90 1A 0C A8 */	stw r0, 0xca8(r26)
lbl_80ADF104:
/* 80ADF104  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80ADF108  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80ADF10C  48 00 00 60 */	b lbl_80ADF16C
lbl_80ADF110:
/* 80ADF110  7F 43 D3 78 */	mr r3, r26
/* 80ADF114  38 80 00 06 */	li r4, 6
/* 80ADF118  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF11C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF120  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF124  7D 89 03 A6 */	mtctr r12
/* 80ADF128  4E 80 04 21 */	bctrl 
/* 80ADF12C  7F 43 D3 78 */	mr r3, r26
/* 80ADF130  38 80 00 13 */	li r4, 0x13
/* 80ADF134  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF138  38 A0 00 00 */	li r5, 0
/* 80ADF13C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF140  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADF144  7D 89 03 A6 */	mtctr r12
/* 80ADF148  4E 80 04 21 */	bctrl 
/* 80ADF14C  38 00 00 00 */	li r0, 0
/* 80ADF150  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADF154  38 7D 00 00 */	addi r3, r29, 0
/* 80ADF158  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80ADF15C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80ADF160  48 00 00 0C */	b lbl_80ADF16C
lbl_80ADF164:
/* 80ADF164  7F 43 D3 78 */	mr r3, r26
/* 80ADF168  4B 53 AB 14 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80ADF16C:
/* 80ADF16C  83 3A 09 50 */	lwz r25, 0x950(r26)
/* 80ADF170  7F 43 D3 78 */	mr r3, r26
/* 80ADF174  38 81 00 14 */	addi r4, r1, 0x14
/* 80ADF178  38 A1 00 10 */	addi r5, r1, 0x10
/* 80ADF17C  7F 46 D3 78 */	mr r6, r26
/* 80ADF180  38 E0 00 00 */	li r7, 0
/* 80ADF184  4B 67 45 94 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADF188  2C 03 00 00 */	cmpwi r3, 0
/* 80ADF18C  41 82 00 44 */	beq lbl_80ADF1D0
/* 80ADF190  7F 43 D3 78 */	mr r3, r26
/* 80ADF194  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80ADF198  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF19C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF1A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF1A4  7D 89 03 A6 */	mtctr r12
/* 80ADF1A8  4E 80 04 21 */	bctrl 
/* 80ADF1AC  7F 43 D3 78 */	mr r3, r26
/* 80ADF1B0  80 81 00 10 */	lwz r4, 0x10(r1)
/* 80ADF1B4  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF1B8  38 A0 00 00 */	li r5, 0
/* 80ADF1BC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF1C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADF1C4  7D 89 03 A6 */	mtctr r12
/* 80ADF1C8  4E 80 04 21 */	bctrl 
/* 80ADF1CC  48 00 00 E0 */	b lbl_80ADF2AC
lbl_80ADF1D0:
/* 80ADF1D0  2C 19 00 00 */	cmpwi r25, 0
/* 80ADF1D4  41 82 00 D8 */	beq lbl_80ADF2AC
/* 80ADF1D8  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80ADF1DC  2C 00 00 00 */	cmpwi r0, 0
/* 80ADF1E0  40 82 00 CC */	bne lbl_80ADF2AC
/* 80ADF1E4  A8 1A 09 DE */	lha r0, 0x9de(r26)
/* 80ADF1E8  2C 00 00 03 */	cmpwi r0, 3
/* 80ADF1EC  41 82 00 64 */	beq lbl_80ADF250
/* 80ADF1F0  40 80 00 14 */	bge lbl_80ADF204
/* 80ADF1F4  2C 00 00 01 */	cmpwi r0, 1
/* 80ADF1F8  41 82 00 18 */	beq lbl_80ADF210
/* 80ADF1FC  40 80 00 34 */	bge lbl_80ADF230
/* 80ADF200  48 00 00 90 */	b lbl_80ADF290
lbl_80ADF204:
/* 80ADF204  2C 00 00 05 */	cmpwi r0, 5
/* 80ADF208  40 80 00 88 */	bge lbl_80ADF290
/* 80ADF20C  48 00 00 64 */	b lbl_80ADF270
lbl_80ADF210:
/* 80ADF210  7F 43 D3 78 */	mr r3, r26
/* 80ADF214  38 80 00 08 */	li r4, 8
/* 80ADF218  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF21C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF220  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF224  7D 89 03 A6 */	mtctr r12
/* 80ADF228  4E 80 04 21 */	bctrl 
/* 80ADF22C  48 00 00 80 */	b lbl_80ADF2AC
lbl_80ADF230:
/* 80ADF230  7F 43 D3 78 */	mr r3, r26
/* 80ADF234  38 80 00 09 */	li r4, 9
/* 80ADF238  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF23C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF240  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF244  7D 89 03 A6 */	mtctr r12
/* 80ADF248  4E 80 04 21 */	bctrl 
/* 80ADF24C  48 00 00 60 */	b lbl_80ADF2AC
lbl_80ADF250:
/* 80ADF250  7F 43 D3 78 */	mr r3, r26
/* 80ADF254  38 80 00 0A */	li r4, 0xa
/* 80ADF258  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF25C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF260  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF264  7D 89 03 A6 */	mtctr r12
/* 80ADF268  4E 80 04 21 */	bctrl 
/* 80ADF26C  48 00 00 40 */	b lbl_80ADF2AC
lbl_80ADF270:
/* 80ADF270  7F 43 D3 78 */	mr r3, r26
/* 80ADF274  38 80 00 07 */	li r4, 7
/* 80ADF278  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF27C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF280  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF284  7D 89 03 A6 */	mtctr r12
/* 80ADF288  4E 80 04 21 */	bctrl 
/* 80ADF28C  48 00 00 20 */	b lbl_80ADF2AC
lbl_80ADF290:
/* 80ADF290  7F 43 D3 78 */	mr r3, r26
/* 80ADF294  38 80 00 0C */	li r4, 0xc
/* 80ADF298  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF29C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF2A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF2A4  7D 89 03 A6 */	mtctr r12
/* 80ADF2A8  4E 80 04 21 */	bctrl 
lbl_80ADF2AC:
/* 80ADF2AC  83 3A 09 50 */	lwz r25, 0x950(r26)
/* 80ADF2B0  7F 43 D3 78 */	mr r3, r26
/* 80ADF2B4  38 81 00 0C */	addi r4, r1, 0xc
/* 80ADF2B8  38 A1 00 08 */	addi r5, r1, 8
/* 80ADF2BC  7F 46 D3 78 */	mr r6, r26
/* 80ADF2C0  38 E0 00 00 */	li r7, 0
/* 80ADF2C4  4B 67 44 54 */	b ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 80ADF2C8  2C 03 00 00 */	cmpwi r3, 0
/* 80ADF2CC  41 82 00 44 */	beq lbl_80ADF310
/* 80ADF2D0  7F 43 D3 78 */	mr r3, r26
/* 80ADF2D4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80ADF2D8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF2DC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF2E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF2E4  7D 89 03 A6 */	mtctr r12
/* 80ADF2E8  4E 80 04 21 */	bctrl 
/* 80ADF2EC  7F 43 D3 78 */	mr r3, r26
/* 80ADF2F0  80 81 00 08 */	lwz r4, 8(r1)
/* 80ADF2F4  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF2F8  38 A0 00 00 */	li r5, 0
/* 80ADF2FC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF300  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADF304  7D 89 03 A6 */	mtctr r12
/* 80ADF308  4E 80 04 21 */	bctrl 
/* 80ADF30C  48 00 00 E0 */	b lbl_80ADF3EC
lbl_80ADF310:
/* 80ADF310  2C 19 00 00 */	cmpwi r25, 0
/* 80ADF314  41 82 00 D8 */	beq lbl_80ADF3EC
/* 80ADF318  80 1A 09 50 */	lwz r0, 0x950(r26)
/* 80ADF31C  2C 00 00 00 */	cmpwi r0, 0
/* 80ADF320  40 82 00 CC */	bne lbl_80ADF3EC
/* 80ADF324  A8 1A 09 DE */	lha r0, 0x9de(r26)
/* 80ADF328  2C 00 00 03 */	cmpwi r0, 3
/* 80ADF32C  41 82 00 64 */	beq lbl_80ADF390
/* 80ADF330  40 80 00 14 */	bge lbl_80ADF344
/* 80ADF334  2C 00 00 01 */	cmpwi r0, 1
/* 80ADF338  41 82 00 18 */	beq lbl_80ADF350
/* 80ADF33C  40 80 00 34 */	bge lbl_80ADF370
/* 80ADF340  48 00 00 90 */	b lbl_80ADF3D0
lbl_80ADF344:
/* 80ADF344  2C 00 00 05 */	cmpwi r0, 5
/* 80ADF348  40 80 00 88 */	bge lbl_80ADF3D0
/* 80ADF34C  48 00 00 64 */	b lbl_80ADF3B0
lbl_80ADF350:
/* 80ADF350  7F 43 D3 78 */	mr r3, r26
/* 80ADF354  38 80 00 08 */	li r4, 8
/* 80ADF358  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF35C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF360  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF364  7D 89 03 A6 */	mtctr r12
/* 80ADF368  4E 80 04 21 */	bctrl 
/* 80ADF36C  48 00 00 80 */	b lbl_80ADF3EC
lbl_80ADF370:
/* 80ADF370  7F 43 D3 78 */	mr r3, r26
/* 80ADF374  38 80 00 09 */	li r4, 9
/* 80ADF378  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF37C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF380  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF384  7D 89 03 A6 */	mtctr r12
/* 80ADF388  4E 80 04 21 */	bctrl 
/* 80ADF38C  48 00 00 60 */	b lbl_80ADF3EC
lbl_80ADF390:
/* 80ADF390  7F 43 D3 78 */	mr r3, r26
/* 80ADF394  38 80 00 0A */	li r4, 0xa
/* 80ADF398  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF39C  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF3A0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF3A4  7D 89 03 A6 */	mtctr r12
/* 80ADF3A8  4E 80 04 21 */	bctrl 
/* 80ADF3AC  48 00 00 40 */	b lbl_80ADF3EC
lbl_80ADF3B0:
/* 80ADF3B0  7F 43 D3 78 */	mr r3, r26
/* 80ADF3B4  38 80 00 07 */	li r4, 7
/* 80ADF3B8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF3BC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF3C0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF3C4  7D 89 03 A6 */	mtctr r12
/* 80ADF3C8  4E 80 04 21 */	bctrl 
/* 80ADF3CC  48 00 00 20 */	b lbl_80ADF3EC
lbl_80ADF3D0:
/* 80ADF3D0  7F 43 D3 78 */	mr r3, r26
/* 80ADF3D4  38 80 00 0C */	li r4, 0xc
/* 80ADF3D8  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF3DC  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF3E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF3E4  7D 89 03 A6 */	mtctr r12
/* 80ADF3E8  4E 80 04 21 */	bctrl 
lbl_80ADF3EC:
/* 80ADF3EC  A0 1E 4F A2 */	lhz r0, 0x4fa2(r30)
/* 80ADF3F0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80ADF3F4  41 82 00 50 */	beq lbl_80ADF444
/* 80ADF3F8  4B 67 66 F0 */	b daNpcF_clearMessageTmpBit__Fv
/* 80ADF3FC  38 60 03 11 */	li r3, 0x311
/* 80ADF400  4B 67 62 74 */	b daNpcF_onEvtBit__FUl
/* 80ADF404  38 00 00 09 */	li r0, 9
/* 80ADF408  B0 1A 09 E6 */	sth r0, 0x9e6(r26)
/* 80ADF40C  4B 75 85 88 */	b onKillMessageFlag__12dMsgObject_cFv
/* 80ADF410  A0 1A 09 E6 */	lhz r0, 0x9e6(r26)
/* 80ADF414  54 00 10 3A */	slwi r0, r0, 2
/* 80ADF418  7F 43 D3 78 */	mr r3, r26
/* 80ADF41C  3C 80 80 AE */	lis r4, l_evtArcs@ha
/* 80ADF420  38 84 29 28 */	addi r4, r4, l_evtArcs@l
/* 80ADF424  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ADF428  3C A0 80 AE */	lis r5, l_evtNames@ha
/* 80ADF42C  38 A5 28 F0 */	addi r5, r5, l_evtNames@l
/* 80ADF430  7C A5 00 2E */	lwzx r5, r5, r0
/* 80ADF434  38 C0 00 01 */	li r6, 1
/* 80ADF438  3C E0 00 01 */	lis r7, 0x0001 /* 0x0000FFFF@ha */
/* 80ADF43C  38 E7 FF FF */	addi r7, r7, 0xFFFF /* 0x0000FFFF@l */
/* 80ADF440  4B 67 45 14 */	b changeEvent__8daNpcF_cFPcPcUsUs
lbl_80ADF444:
/* 80ADF444  80 9F 00 00 */	lwz r4, 0(r31)
/* 80ADF448  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303034@ha */
/* 80ADF44C  38 03 30 34 */	addi r0, r3, 0x3034 /* 0x30303034@l */
/* 80ADF450  7C 04 00 00 */	cmpw r4, r0
/* 80ADF454  41 82 02 30 */	beq lbl_80ADF684
/* 80ADF458  40 80 00 24 */	bge lbl_80ADF47C
/* 80ADF45C  38 03 30 32 */	addi r0, r3, 0x3032
/* 80ADF460  7C 04 00 00 */	cmpw r4, r0
/* 80ADF464  41 82 02 18 */	beq lbl_80ADF67C
/* 80ADF468  40 80 02 64 */	bge lbl_80ADF6CC
/* 80ADF46C  38 03 30 31 */	addi r0, r3, 0x3031
/* 80ADF470  7C 04 00 00 */	cmpw r4, r0
/* 80ADF474  40 80 00 1C */	bge lbl_80ADF490
/* 80ADF478  48 00 03 7C */	b lbl_80ADF7F4
lbl_80ADF47C:
/* 80ADF47C  38 03 30 36 */	addi r0, r3, 0x3036
/* 80ADF480  7C 04 00 00 */	cmpw r4, r0
/* 80ADF484  41 82 03 68 */	beq lbl_80ADF7EC
/* 80ADF488  40 80 03 6C */	bge lbl_80ADF7F4
/* 80ADF48C  48 00 02 40 */	b lbl_80ADF6CC
lbl_80ADF490:
/* 80ADF490  7F 43 D3 78 */	mr r3, r26
/* 80ADF494  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80ADF498  3B 64 61 C0 */	addi r27, r4, g_dComIfG_gameInfo@l
/* 80ADF49C  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80ADF4A0  4B 53 B2 70 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADF4A4  A8 9A 08 F2 */	lha r4, 0x8f2(r26)
/* 80ADF4A8  7C 60 07 34 */	extsh r0, r3
/* 80ADF4AC  7C 04 00 00 */	cmpw r4, r0
/* 80ADF4B0  40 82 00 4C */	bne lbl_80ADF4FC
/* 80ADF4B4  7F 43 D3 78 */	mr r3, r26
/* 80ADF4B8  38 80 00 00 */	li r4, 0
/* 80ADF4BC  38 A0 00 01 */	li r5, 1
/* 80ADF4C0  38 C0 00 00 */	li r6, 0
/* 80ADF4C4  4B 67 48 C0 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADF4C8  2C 03 00 00 */	cmpwi r3, 0
/* 80ADF4CC  41 82 03 28 */	beq lbl_80ADF7F4
/* 80ADF4D0  A8 1A 0E 18 */	lha r0, 0xe18(r26)
/* 80ADF4D4  2C 00 00 00 */	cmpwi r0, 0
/* 80ADF4D8  40 82 00 10 */	bne lbl_80ADF4E8
/* 80ADF4DC  80 1A 0C A8 */	lwz r0, 0xca8(r26)
/* 80ADF4E0  28 00 00 00 */	cmplwi r0, 0
/* 80ADF4E4  41 82 00 10 */	beq lbl_80ADF4F4
lbl_80ADF4E8:
/* 80ADF4E8  38 00 00 00 */	li r0, 0
/* 80ADF4EC  B0 1A 0E 18 */	sth r0, 0xe18(r26)
/* 80ADF4F0  90 1A 0C A8 */	stw r0, 0xca8(r26)
lbl_80ADF4F4:
/* 80ADF4F4  38 60 00 01 */	li r3, 1
/* 80ADF4F8  48 00 03 00 */	b lbl_80ADF7F8
lbl_80ADF4FC:
/* 80ADF4FC  7F 43 D3 78 */	mr r3, r26
/* 80ADF500  80 9B 5D AC */	lwz r4, 0x5dac(r27)
/* 80ADF504  4B 53 B2 0C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80ADF508  7C 7B 1B 78 */	mr r27, r3
/* 80ADF50C  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80ADF510  2C 00 00 00 */	cmpwi r0, 0
/* 80ADF514  40 82 00 D4 */	bne lbl_80ADF5E8
/* 80ADF518  C0 5D 04 44 */	lfs f2, 0x444(r29)
/* 80ADF51C  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80ADF520  7C 00 D8 50 */	subf r0, r0, r27
/* 80ADF524  7C 00 07 34 */	extsh r0, r0
/* 80ADF528  C8 3D 04 50 */	lfd f1, 0x450(r29)
/* 80ADF52C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80ADF530  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ADF534  3C 00 43 30 */	lis r0, 0x4330
/* 80ADF538  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ADF53C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80ADF540  EC 00 08 28 */	fsubs f0, f0, f1
/* 80ADF544  EC 02 00 32 */	fmuls f0, f2, f0
/* 80ADF548  FC 00 02 10 */	fabs f0, f0
/* 80ADF54C  FC 00 00 18 */	frsp f0, f0
/* 80ADF550  FC 00 00 1E */	fctiwz f0, f0
/* 80ADF554  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80ADF558  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ADF55C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80ADF560  40 81 00 40 */	ble lbl_80ADF5A0
/* 80ADF564  7F 43 D3 78 */	mr r3, r26
/* 80ADF568  38 80 00 0C */	li r4, 0xc
/* 80ADF56C  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF570  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF574  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADF578  7D 89 03 A6 */	mtctr r12
/* 80ADF57C  4E 80 04 21 */	bctrl 
/* 80ADF580  7F 43 D3 78 */	mr r3, r26
/* 80ADF584  38 80 00 15 */	li r4, 0x15
/* 80ADF588  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF58C  38 A0 00 00 */	li r5, 0
/* 80ADF590  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF594  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADF598  7D 89 03 A6 */	mtctr r12
/* 80ADF59C  4E 80 04 21 */	bctrl 
lbl_80ADF5A0:
/* 80ADF5A0  B3 7A 09 96 */	sth r27, 0x996(r26)
/* 80ADF5A4  38 00 00 00 */	li r0, 0
/* 80ADF5A8  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80ADF5AC  A8 7A 08 F2 */	lha r3, 0x8f2(r26)
/* 80ADF5B0  A8 1A 09 96 */	lha r0, 0x996(r26)
/* 80ADF5B4  7C 03 00 00 */	cmpw r3, r0
/* 80ADF5B8  40 82 00 10 */	bne lbl_80ADF5C8
/* 80ADF5BC  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80ADF5C0  38 03 00 01 */	addi r0, r3, 1
/* 80ADF5C4  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80ADF5C8:
/* 80ADF5C8  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80ADF5CC  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80ADF5D0  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF5D4  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80ADF5D8  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80ADF5DC  38 03 00 01 */	addi r0, r3, 1
/* 80ADF5E0  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADF5E4  48 00 00 60 */	b lbl_80ADF644
lbl_80ADF5E8:
/* 80ADF5E8  2C 00 00 01 */	cmpwi r0, 1
/* 80ADF5EC  40 82 00 58 */	bne lbl_80ADF644
/* 80ADF5F0  7F 43 D3 78 */	mr r3, r26
/* 80ADF5F4  A8 9A 09 96 */	lha r4, 0x996(r26)
/* 80ADF5F8  C0 3D 04 48 */	lfs f1, 0x448(r29)
/* 80ADF5FC  38 A0 00 00 */	li r5, 0
/* 80ADF600  4B 67 48 F4 */	b turn__8daNpcF_cFsfi
/* 80ADF604  2C 03 00 00 */	cmpwi r3, 0
/* 80ADF608  41 82 00 2C */	beq lbl_80ADF634
/* 80ADF60C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF610  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80ADF614  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF618  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80ADF61C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF620  B0 1A 08 F8 */	sth r0, 0x8f8(r26)
/* 80ADF624  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80ADF628  38 03 00 01 */	addi r0, r3, 1
/* 80ADF62C  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADF630  48 00 00 14 */	b lbl_80ADF644
lbl_80ADF634:
/* 80ADF634  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF638  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80ADF63C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF640  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
lbl_80ADF644:
/* 80ADF644  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80ADF648  2C 00 00 01 */	cmpwi r0, 1
/* 80ADF64C  40 81 01 A8 */	ble lbl_80ADF7F4
/* 80ADF650  7F 43 D3 78 */	mr r3, r26
/* 80ADF654  38 80 00 00 */	li r4, 0
/* 80ADF658  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF65C  38 A0 00 00 */	li r5, 0
/* 80ADF660  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF664  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADF668  7D 89 03 A6 */	mtctr r12
/* 80ADF66C  4E 80 04 21 */	bctrl 
/* 80ADF670  38 00 00 00 */	li r0, 0
/* 80ADF674  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADF678  48 00 01 7C */	b lbl_80ADF7F4
lbl_80ADF67C:
/* 80ADF67C  38 60 00 01 */	li r3, 1
/* 80ADF680  48 00 01 78 */	b lbl_80ADF7F8
lbl_80ADF684:
/* 80ADF684  7F 43 D3 78 */	mr r3, r26
/* 80ADF688  38 80 00 00 */	li r4, 0
/* 80ADF68C  38 A0 00 01 */	li r5, 1
/* 80ADF690  38 C0 00 00 */	li r6, 0
/* 80ADF694  4B 67 46 F0 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80ADF698  2C 03 00 00 */	cmpwi r3, 0
/* 80ADF69C  41 82 01 58 */	beq lbl_80ADF7F4
/* 80ADF6A0  A8 1A 0E 18 */	lha r0, 0xe18(r26)
/* 80ADF6A4  2C 00 00 00 */	cmpwi r0, 0
/* 80ADF6A8  40 82 00 10 */	bne lbl_80ADF6B8
/* 80ADF6AC  80 1A 0C A8 */	lwz r0, 0xca8(r26)
/* 80ADF6B0  28 00 00 00 */	cmplwi r0, 0
/* 80ADF6B4  41 82 00 10 */	beq lbl_80ADF6C4
lbl_80ADF6B8:
/* 80ADF6B8  38 00 00 00 */	li r0, 0
/* 80ADF6BC  B0 1A 0E 18 */	sth r0, 0xe18(r26)
/* 80ADF6C0  90 1A 0C A8 */	stw r0, 0xca8(r26)
lbl_80ADF6C4:
/* 80ADF6C4  38 60 00 01 */	li r3, 1
/* 80ADF6C8  48 00 01 30 */	b lbl_80ADF7F8
lbl_80ADF6CC:
/* 80ADF6CC  7F 83 E3 78 */	mr r3, r28
/* 80ADF6D0  7F 64 DB 78 */	mr r4, r27
/* 80ADF6D4  3C A0 80 AE */	lis r5, struct_80AE24C4+0x0@ha
/* 80ADF6D8  38 A5 24 C4 */	addi r5, r5, struct_80AE24C4+0x0@l
/* 80ADF6DC  38 A5 01 52 */	addi r5, r5, 0x152
/* 80ADF6E0  38 C0 00 01 */	li r6, 1
/* 80ADF6E4  4B 56 8A 08 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80ADF6E8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ADF6EC  41 82 01 08 */	beq lbl_80ADF7F4
/* 80ADF6F0  38 7A 04 D0 */	addi r3, r26, 0x4d0
/* 80ADF6F4  7F C4 F3 78 */	mr r4, r30
/* 80ADF6F8  4B 79 15 0C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80ADF6FC  80 1A 09 6C */	lwz r0, 0x96c(r26)
/* 80ADF700  2C 00 00 00 */	cmpwi r0, 0
/* 80ADF704  40 82 00 4C */	bne lbl_80ADF750
/* 80ADF708  B0 7A 09 96 */	sth r3, 0x996(r26)
/* 80ADF70C  38 00 00 00 */	li r0, 0
/* 80ADF710  90 1A 09 68 */	stw r0, 0x968(r26)
/* 80ADF714  A8 7A 08 F2 */	lha r3, 0x8f2(r26)
/* 80ADF718  A8 1A 09 96 */	lha r0, 0x996(r26)
/* 80ADF71C  7C 03 00 00 */	cmpw r3, r0
/* 80ADF720  40 82 00 10 */	bne lbl_80ADF730
/* 80ADF724  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80ADF728  38 03 00 01 */	addi r0, r3, 1
/* 80ADF72C  90 1A 09 6C */	stw r0, 0x96c(r26)
lbl_80ADF730:
/* 80ADF730  A8 1A 08 F2 */	lha r0, 0x8f2(r26)
/* 80ADF734  B0 1A 04 DE */	sth r0, 0x4de(r26)
/* 80ADF738  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF73C  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80ADF740  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80ADF744  38 03 00 01 */	addi r0, r3, 1
/* 80ADF748  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADF74C  48 00 00 60 */	b lbl_80ADF7AC
lbl_80ADF750:
/* 80ADF750  2C 00 00 01 */	cmpwi r0, 1
/* 80ADF754  40 82 00 58 */	bne lbl_80ADF7AC
/* 80ADF758  7F 43 D3 78 */	mr r3, r26
/* 80ADF75C  A8 9A 09 96 */	lha r4, 0x996(r26)
/* 80ADF760  C0 3D 04 48 */	lfs f1, 0x448(r29)
/* 80ADF764  38 A0 00 00 */	li r5, 0
/* 80ADF768  4B 67 47 8C */	b turn__8daNpcF_cFsfi
/* 80ADF76C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADF770  41 82 00 2C */	beq lbl_80ADF79C
/* 80ADF774  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF778  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80ADF77C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF780  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
/* 80ADF784  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF788  B0 1A 08 F8 */	sth r0, 0x8f8(r26)
/* 80ADF78C  80 7A 09 6C */	lwz r3, 0x96c(r26)
/* 80ADF790  38 03 00 01 */	addi r0, r3, 1
/* 80ADF794  90 1A 09 6C */	stw r0, 0x96c(r26)
/* 80ADF798  48 00 00 14 */	b lbl_80ADF7AC
lbl_80ADF79C:
/* 80ADF79C  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF7A0  B0 1A 04 E6 */	sth r0, 0x4e6(r26)
/* 80ADF7A4  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 80ADF7A8  B0 1A 08 F2 */	sth r0, 0x8f2(r26)
lbl_80ADF7AC:
/* 80ADF7AC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80ADF7B0  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80ADF7B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80ADF7B8  40 81 00 3C */	ble lbl_80ADF7F4
/* 80ADF7BC  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 80ADF7C0  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 80ADF7C4  7F 43 D3 78 */	mr r3, r26
/* 80ADF7C8  38 80 00 00 */	li r4, 0
/* 80ADF7CC  C0 3D 04 3C */	lfs f1, 0x43c(r29)
/* 80ADF7D0  38 A0 00 00 */	li r5, 0
/* 80ADF7D4  81 9A 0B 44 */	lwz r12, 0xb44(r26)
/* 80ADF7D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADF7DC  7D 89 03 A6 */	mtctr r12
/* 80ADF7E0  4E 80 04 21 */	bctrl 
/* 80ADF7E4  38 60 00 01 */	li r3, 1
/* 80ADF7E8  48 00 00 10 */	b lbl_80ADF7F8
lbl_80ADF7EC:
/* 80ADF7EC  38 60 00 01 */	li r3, 1
/* 80ADF7F0  48 00 00 08 */	b lbl_80ADF7F8
lbl_80ADF7F4:
/* 80ADF7F4  38 60 00 00 */	li r3, 0
lbl_80ADF7F8:
/* 80ADF7F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80ADF7FC  4B 88 2A 1C */	b _restgpr_25
/* 80ADF800  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80ADF804  7C 08 03 A6 */	mtlr r0
/* 80ADF808  38 21 00 50 */	addi r1, r1, 0x50
/* 80ADF80C  4E 80 00 20 */	blr 

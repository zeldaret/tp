lbl_80ADBEA8:
/* 80ADBEA8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80ADBEAC  7C 08 02 A6 */	mflr r0
/* 80ADBEB0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80ADBEB4  39 61 00 70 */	addi r11, r1, 0x70
/* 80ADBEB8  4B 88 63 1C */	b _savegpr_27
/* 80ADBEBC  7C 7E 1B 78 */	mr r30, r3
/* 80ADBEC0  3C 80 80 AE */	lis r4, cNullVec__6Z2Calc@ha
/* 80ADBEC4  3B E4 26 20 */	addi r31, r4, cNullVec__6Z2Calc@l
/* 80ADBEC8  A0 03 0E 1A */	lhz r0, 0xe1a(r3)
/* 80ADBECC  2C 00 00 02 */	cmpwi r0, 2
/* 80ADBED0  41 82 00 60 */	beq lbl_80ADBF30
/* 80ADBED4  40 80 04 EC */	bge lbl_80ADC3C0
/* 80ADBED8  2C 00 00 00 */	cmpwi r0, 0
/* 80ADBEDC  41 82 00 0C */	beq lbl_80ADBEE8
/* 80ADBEE0  48 00 04 E0 */	b lbl_80ADC3C0
/* 80ADBEE4  48 00 04 DC */	b lbl_80ADC3C0
lbl_80ADBEE8:
/* 80ADBEE8  38 80 00 0C */	li r4, 0xc
/* 80ADBEEC  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADBEF0  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADBEF4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80ADBEF8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80ADBEFC  7D 89 03 A6 */	mtctr r12
/* 80ADBF00  4E 80 04 21 */	bctrl 
/* 80ADBF04  7F C3 F3 78 */	mr r3, r30
/* 80ADBF08  38 80 00 00 */	li r4, 0
/* 80ADBF0C  3C A0 80 AE */	lis r5, lit_5210@ha
/* 80ADBF10  C0 25 24 18 */	lfs f1, lit_5210@l(r5)
/* 80ADBF14  38 A0 00 00 */	li r5, 0
/* 80ADBF18  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80ADBF1C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80ADBF20  7D 89 03 A6 */	mtctr r12
/* 80ADBF24  4E 80 04 21 */	bctrl 
/* 80ADBF28  38 00 00 02 */	li r0, 2
/* 80ADBF2C  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
lbl_80ADBF30:
/* 80ADBF30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ADBF34  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80ADBF38  88 1D 4F AD */	lbz r0, 0x4fad(r29)
/* 80ADBF3C  28 00 00 00 */	cmplwi r0, 0
/* 80ADBF40  41 82 02 A8 */	beq lbl_80ADC1E8
/* 80ADBF44  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80ADBF48  28 00 00 01 */	cmplwi r0, 1
/* 80ADBF4C  41 82 02 9C */	beq lbl_80ADC1E8
/* 80ADBF50  3B 9D 4F F8 */	addi r28, r29, 0x4ff8
/* 80ADBF54  7F 83 E3 78 */	mr r3, r28
/* 80ADBF58  80 9F 03 40 */	lwz r4, 0x340(r31)
/* 80ADBF5C  38 A0 00 00 */	li r5, 0
/* 80ADBF60  38 C0 00 00 */	li r6, 0
/* 80ADBF64  4B 56 BB B8 */	b getMyStaffId__16dEvent_manager_cFPCcP10fopAc_ac_ci
/* 80ADBF68  2C 03 FF FF */	cmpwi r3, -1
/* 80ADBF6C  41 82 00 70 */	beq lbl_80ADBFDC
/* 80ADBF70  7C 7B 1B 78 */	mr r27, r3
/* 80ADBF74  93 7E 09 2C */	stw r27, 0x92c(r30)
/* 80ADBF78  7F 83 E3 78 */	mr r3, r28
/* 80ADBF7C  7F 64 DB 78 */	mr r4, r27
/* 80ADBF80  38 BF 02 D0 */	addi r5, r31, 0x2d0
/* 80ADBF84  38 C0 00 0E */	li r6, 0xe
/* 80ADBF88  38 E0 00 00 */	li r7, 0
/* 80ADBF8C  39 00 00 00 */	li r8, 0
/* 80ADBF90  4B 56 BE 80 */	b getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80ADBF94  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBF98  40 81 00 10 */	ble lbl_80ADBFA8
/* 80ADBF9C  2C 03 00 0E */	cmpwi r3, 0xe
/* 80ADBFA0  40 80 00 08 */	bge lbl_80ADBFA8
/* 80ADBFA4  B0 7E 09 E6 */	sth r3, 0x9e6(r30)
lbl_80ADBFA8:
/* 80ADBFA8  7F C3 F3 78 */	mr r3, r30
/* 80ADBFAC  7F 64 DB 78 */	mr r4, r27
/* 80ADBFB0  A0 1E 09 E6 */	lhz r0, 0x9e6(r30)
/* 80ADBFB4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80ADBFB8  39 9F 03 E0 */	addi r12, r31, 0x3e0
/* 80ADBFBC  7D 8C 02 14 */	add r12, r12, r0
/* 80ADBFC0  4B 88 60 C4 */	b __ptmf_scall
/* 80ADBFC4  60 00 00 00 */	nop 
/* 80ADBFC8  2C 03 00 00 */	cmpwi r3, 0
/* 80ADBFCC  41 82 00 10 */	beq lbl_80ADBFDC
/* 80ADBFD0  7F 83 E3 78 */	mr r3, r28
/* 80ADBFD4  7F 64 DB 78 */	mr r4, r27
/* 80ADBFD8  4B 56 C1 A4 */	b cutEnd__16dEvent_manager_cFi
lbl_80ADBFDC:
/* 80ADBFDC  A0 1E 00 F8 */	lhz r0, 0xf8(r30)
/* 80ADBFE0  28 00 00 02 */	cmplwi r0, 2
/* 80ADBFE4  40 82 03 DC */	bne lbl_80ADC3C0
/* 80ADBFE8  A8 9E 09 D4 */	lha r4, 0x9d4(r30)
/* 80ADBFEC  2C 04 FF FF */	cmpwi r4, -1
/* 80ADBFF0  41 82 03 D0 */	beq lbl_80ADC3C0
/* 80ADBFF4  7F 83 E3 78 */	mr r3, r28
/* 80ADBFF8  4B 56 BA 80 */	b endCheck__16dEvent_manager_cFs
/* 80ADBFFC  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC000  41 82 03 C0 */	beq lbl_80ADC3C0
/* 80ADC004  38 7D 4E C8 */	addi r3, r29, 0x4ec8
/* 80ADC008  4B 56 64 60 */	b reset__14dEvt_control_cFv
/* 80ADC00C  38 00 00 00 */	li r0, 0
/* 80ADC010  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80ADC014  38 00 FF FF */	li r0, -1
/* 80ADC018  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80ADC01C  88 1E 0E 20 */	lbz r0, 0xe20(r30)
/* 80ADC020  2C 00 00 01 */	cmpwi r0, 1
/* 80ADC024  41 82 00 AC */	beq lbl_80ADC0D0
/* 80ADC028  40 80 00 10 */	bge lbl_80ADC038
/* 80ADC02C  2C 00 00 00 */	cmpwi r0, 0
/* 80ADC030  40 80 00 14 */	bge lbl_80ADC044
/* 80ADC034  48 00 03 8C */	b lbl_80ADC3C0
lbl_80ADC038:
/* 80ADC038  2C 00 00 03 */	cmpwi r0, 3
/* 80ADC03C  40 80 03 84 */	bge lbl_80ADC3C0
/* 80ADC040  48 00 01 1C */	b lbl_80ADC15C
lbl_80ADC044:
/* 80ADC044  80 7F 04 BC */	lwz r3, 0x4bc(r31)
/* 80ADC048  80 1F 04 C0 */	lwz r0, 0x4c0(r31)
/* 80ADC04C  90 61 00 2C */	stw r3, 0x2c(r1)
/* 80ADC050  90 01 00 30 */	stw r0, 0x30(r1)
/* 80ADC054  80 1F 04 C4 */	lwz r0, 0x4c4(r31)
/* 80ADC058  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ADC05C  38 00 00 03 */	li r0, 3
/* 80ADC060  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC064  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC068  4B 88 5F B0 */	b __ptmf_test
/* 80ADC06C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC070  41 82 00 18 */	beq lbl_80ADC088
/* 80ADC074  7F C3 F3 78 */	mr r3, r30
/* 80ADC078  38 80 00 00 */	li r4, 0
/* 80ADC07C  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC080  4B 88 60 04 */	b __ptmf_scall
/* 80ADC084  60 00 00 00 */	nop 
lbl_80ADC088:
/* 80ADC088  38 00 00 00 */	li r0, 0
/* 80ADC08C  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC090  80 61 00 2C */	lwz r3, 0x2c(r1)
/* 80ADC094  80 01 00 30 */	lwz r0, 0x30(r1)
/* 80ADC098  90 7E 0D EC */	stw r3, 0xdec(r30)
/* 80ADC09C  90 1E 0D F0 */	stw r0, 0xdf0(r30)
/* 80ADC0A0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ADC0A4  90 1E 0D F4 */	stw r0, 0xdf4(r30)
/* 80ADC0A8  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC0AC  4B 88 5F 6C */	b __ptmf_test
/* 80ADC0B0  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC0B4  41 82 03 0C */	beq lbl_80ADC3C0
/* 80ADC0B8  7F C3 F3 78 */	mr r3, r30
/* 80ADC0BC  38 80 00 00 */	li r4, 0
/* 80ADC0C0  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC0C4  4B 88 5F C0 */	b __ptmf_scall
/* 80ADC0C8  60 00 00 00 */	nop 
/* 80ADC0CC  48 00 02 F4 */	b lbl_80ADC3C0
lbl_80ADC0D0:
/* 80ADC0D0  80 7F 04 C8 */	lwz r3, 0x4c8(r31)
/* 80ADC0D4  80 1F 04 CC */	lwz r0, 0x4cc(r31)
/* 80ADC0D8  90 61 00 38 */	stw r3, 0x38(r1)
/* 80ADC0DC  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80ADC0E0  80 1F 04 D0 */	lwz r0, 0x4d0(r31)
/* 80ADC0E4  90 01 00 40 */	stw r0, 0x40(r1)
/* 80ADC0E8  38 00 00 03 */	li r0, 3
/* 80ADC0EC  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC0F0  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC0F4  4B 88 5F 24 */	b __ptmf_test
/* 80ADC0F8  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC0FC  41 82 00 18 */	beq lbl_80ADC114
/* 80ADC100  7F C3 F3 78 */	mr r3, r30
/* 80ADC104  38 80 00 00 */	li r4, 0
/* 80ADC108  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC10C  4B 88 5F 78 */	b __ptmf_scall
/* 80ADC110  60 00 00 00 */	nop 
lbl_80ADC114:
/* 80ADC114  38 00 00 00 */	li r0, 0
/* 80ADC118  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC11C  80 61 00 38 */	lwz r3, 0x38(r1)
/* 80ADC120  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 80ADC124  90 7E 0D EC */	stw r3, 0xdec(r30)
/* 80ADC128  90 1E 0D F0 */	stw r0, 0xdf0(r30)
/* 80ADC12C  80 01 00 40 */	lwz r0, 0x40(r1)
/* 80ADC130  90 1E 0D F4 */	stw r0, 0xdf4(r30)
/* 80ADC134  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC138  4B 88 5E E0 */	b __ptmf_test
/* 80ADC13C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC140  41 82 02 80 */	beq lbl_80ADC3C0
/* 80ADC144  7F C3 F3 78 */	mr r3, r30
/* 80ADC148  38 80 00 00 */	li r4, 0
/* 80ADC14C  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC150  4B 88 5F 34 */	b __ptmf_scall
/* 80ADC154  60 00 00 00 */	nop 
/* 80ADC158  48 00 02 68 */	b lbl_80ADC3C0
lbl_80ADC15C:
/* 80ADC15C  80 7F 04 D4 */	lwz r3, 0x4d4(r31)
/* 80ADC160  80 1F 04 D8 */	lwz r0, 0x4d8(r31)
/* 80ADC164  90 61 00 44 */	stw r3, 0x44(r1)
/* 80ADC168  90 01 00 48 */	stw r0, 0x48(r1)
/* 80ADC16C  80 1F 04 DC */	lwz r0, 0x4dc(r31)
/* 80ADC170  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80ADC174  38 00 00 03 */	li r0, 3
/* 80ADC178  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC17C  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC180  4B 88 5E 98 */	b __ptmf_test
/* 80ADC184  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC188  41 82 00 18 */	beq lbl_80ADC1A0
/* 80ADC18C  7F C3 F3 78 */	mr r3, r30
/* 80ADC190  38 80 00 00 */	li r4, 0
/* 80ADC194  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC198  4B 88 5E EC */	b __ptmf_scall
/* 80ADC19C  60 00 00 00 */	nop 
lbl_80ADC1A0:
/* 80ADC1A0  38 00 00 00 */	li r0, 0
/* 80ADC1A4  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC1A8  80 61 00 44 */	lwz r3, 0x44(r1)
/* 80ADC1AC  80 01 00 48 */	lwz r0, 0x48(r1)
/* 80ADC1B0  90 7E 0D EC */	stw r3, 0xdec(r30)
/* 80ADC1B4  90 1E 0D F0 */	stw r0, 0xdf0(r30)
/* 80ADC1B8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80ADC1BC  90 1E 0D F4 */	stw r0, 0xdf4(r30)
/* 80ADC1C0  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC1C4  4B 88 5E 54 */	b __ptmf_test
/* 80ADC1C8  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC1CC  41 82 01 F4 */	beq lbl_80ADC3C0
/* 80ADC1D0  7F C3 F3 78 */	mr r3, r30
/* 80ADC1D4  38 80 00 00 */	li r4, 0
/* 80ADC1D8  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC1DC  4B 88 5E A8 */	b __ptmf_scall
/* 80ADC1E0  60 00 00 00 */	nop 
/* 80ADC1E4  48 00 01 DC */	b lbl_80ADC3C0
lbl_80ADC1E8:
/* 80ADC1E8  38 00 00 00 */	li r0, 0
/* 80ADC1EC  B0 1E 09 E6 */	sth r0, 0x9e6(r30)
/* 80ADC1F0  38 00 FF FF */	li r0, -1
/* 80ADC1F4  B0 1E 09 D4 */	sth r0, 0x9d4(r30)
/* 80ADC1F8  88 1E 0E 20 */	lbz r0, 0xe20(r30)
/* 80ADC1FC  2C 00 00 01 */	cmpwi r0, 1
/* 80ADC200  41 82 00 AC */	beq lbl_80ADC2AC
/* 80ADC204  40 80 00 10 */	bge lbl_80ADC214
/* 80ADC208  2C 00 00 00 */	cmpwi r0, 0
/* 80ADC20C  40 80 00 14 */	bge lbl_80ADC220
/* 80ADC210  48 00 01 B0 */	b lbl_80ADC3C0
lbl_80ADC214:
/* 80ADC214  2C 00 00 03 */	cmpwi r0, 3
/* 80ADC218  40 80 01 A8 */	bge lbl_80ADC3C0
/* 80ADC21C  48 00 01 1C */	b lbl_80ADC338
lbl_80ADC220:
/* 80ADC220  80 7F 04 BC */	lwz r3, 0x4bc(r31)
/* 80ADC224  80 1F 04 C0 */	lwz r0, 0x4c0(r31)
/* 80ADC228  90 61 00 08 */	stw r3, 8(r1)
/* 80ADC22C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80ADC230  80 1F 04 C4 */	lwz r0, 0x4c4(r31)
/* 80ADC234  90 01 00 10 */	stw r0, 0x10(r1)
/* 80ADC238  38 00 00 03 */	li r0, 3
/* 80ADC23C  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC240  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC244  4B 88 5D D4 */	b __ptmf_test
/* 80ADC248  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC24C  41 82 00 18 */	beq lbl_80ADC264
/* 80ADC250  7F C3 F3 78 */	mr r3, r30
/* 80ADC254  38 80 00 00 */	li r4, 0
/* 80ADC258  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC25C  4B 88 5E 28 */	b __ptmf_scall
/* 80ADC260  60 00 00 00 */	nop 
lbl_80ADC264:
/* 80ADC264  38 00 00 00 */	li r0, 0
/* 80ADC268  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC26C  80 61 00 08 */	lwz r3, 8(r1)
/* 80ADC270  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ADC274  90 7E 0D EC */	stw r3, 0xdec(r30)
/* 80ADC278  90 1E 0D F0 */	stw r0, 0xdf0(r30)
/* 80ADC27C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80ADC280  90 1E 0D F4 */	stw r0, 0xdf4(r30)
/* 80ADC284  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC288  4B 88 5D 90 */	b __ptmf_test
/* 80ADC28C  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC290  41 82 01 30 */	beq lbl_80ADC3C0
/* 80ADC294  7F C3 F3 78 */	mr r3, r30
/* 80ADC298  38 80 00 00 */	li r4, 0
/* 80ADC29C  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC2A0  4B 88 5D E4 */	b __ptmf_scall
/* 80ADC2A4  60 00 00 00 */	nop 
/* 80ADC2A8  48 00 01 18 */	b lbl_80ADC3C0
lbl_80ADC2AC:
/* 80ADC2AC  80 7F 04 C8 */	lwz r3, 0x4c8(r31)
/* 80ADC2B0  80 1F 04 CC */	lwz r0, 0x4cc(r31)
/* 80ADC2B4  90 61 00 14 */	stw r3, 0x14(r1)
/* 80ADC2B8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ADC2BC  80 1F 04 D0 */	lwz r0, 0x4d0(r31)
/* 80ADC2C0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ADC2C4  38 00 00 03 */	li r0, 3
/* 80ADC2C8  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC2CC  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC2D0  4B 88 5D 48 */	b __ptmf_test
/* 80ADC2D4  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC2D8  41 82 00 18 */	beq lbl_80ADC2F0
/* 80ADC2DC  7F C3 F3 78 */	mr r3, r30
/* 80ADC2E0  38 80 00 00 */	li r4, 0
/* 80ADC2E4  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC2E8  4B 88 5D 9C */	b __ptmf_scall
/* 80ADC2EC  60 00 00 00 */	nop 
lbl_80ADC2F0:
/* 80ADC2F0  38 00 00 00 */	li r0, 0
/* 80ADC2F4  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC2F8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80ADC2FC  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80ADC300  90 7E 0D EC */	stw r3, 0xdec(r30)
/* 80ADC304  90 1E 0D F0 */	stw r0, 0xdf0(r30)
/* 80ADC308  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80ADC30C  90 1E 0D F4 */	stw r0, 0xdf4(r30)
/* 80ADC310  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC314  4B 88 5D 04 */	b __ptmf_test
/* 80ADC318  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC31C  41 82 00 A4 */	beq lbl_80ADC3C0
/* 80ADC320  7F C3 F3 78 */	mr r3, r30
/* 80ADC324  38 80 00 00 */	li r4, 0
/* 80ADC328  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC32C  4B 88 5D 58 */	b __ptmf_scall
/* 80ADC330  60 00 00 00 */	nop 
/* 80ADC334  48 00 00 8C */	b lbl_80ADC3C0
lbl_80ADC338:
/* 80ADC338  80 7F 04 D4 */	lwz r3, 0x4d4(r31)
/* 80ADC33C  80 1F 04 D8 */	lwz r0, 0x4d8(r31)
/* 80ADC340  90 61 00 20 */	stw r3, 0x20(r1)
/* 80ADC344  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ADC348  80 1F 04 DC */	lwz r0, 0x4dc(r31)
/* 80ADC34C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80ADC350  38 00 00 03 */	li r0, 3
/* 80ADC354  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC358  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC35C  4B 88 5C BC */	b __ptmf_test
/* 80ADC360  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC364  41 82 00 18 */	beq lbl_80ADC37C
/* 80ADC368  7F C3 F3 78 */	mr r3, r30
/* 80ADC36C  38 80 00 00 */	li r4, 0
/* 80ADC370  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC374  4B 88 5D 10 */	b __ptmf_scall
/* 80ADC378  60 00 00 00 */	nop 
lbl_80ADC37C:
/* 80ADC37C  38 00 00 00 */	li r0, 0
/* 80ADC380  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 80ADC384  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80ADC388  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ADC38C  90 7E 0D EC */	stw r3, 0xdec(r30)
/* 80ADC390  90 1E 0D F0 */	stw r0, 0xdf0(r30)
/* 80ADC394  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80ADC398  90 1E 0D F4 */	stw r0, 0xdf4(r30)
/* 80ADC39C  38 7E 0D EC */	addi r3, r30, 0xdec
/* 80ADC3A0  4B 88 5C 78 */	b __ptmf_test
/* 80ADC3A4  2C 03 00 00 */	cmpwi r3, 0
/* 80ADC3A8  41 82 00 18 */	beq lbl_80ADC3C0
/* 80ADC3AC  7F C3 F3 78 */	mr r3, r30
/* 80ADC3B0  38 80 00 00 */	li r4, 0
/* 80ADC3B4  39 9E 0D EC */	addi r12, r30, 0xdec
/* 80ADC3B8  4B 88 5C CC */	b __ptmf_scall
/* 80ADC3BC  60 00 00 00 */	nop 
lbl_80ADC3C0:
/* 80ADC3C0  38 60 00 01 */	li r3, 1
/* 80ADC3C4  39 61 00 70 */	addi r11, r1, 0x70
/* 80ADC3C8  4B 88 5E 58 */	b _restgpr_27
/* 80ADC3CC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80ADC3D0  7C 08 03 A6 */	mtlr r0
/* 80ADC3D4  38 21 00 70 */	addi r1, r1, 0x70
/* 80ADC3D8  4E 80 00 20 */	blr 

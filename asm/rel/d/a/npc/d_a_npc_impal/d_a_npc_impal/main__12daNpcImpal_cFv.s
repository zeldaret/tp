lbl_80A0AEA8:
/* 80A0AEA8  94 21 FE 80 */	stwu r1, -0x180(r1)
/* 80A0AEAC  7C 08 02 A6 */	mflr r0
/* 80A0AEB0  90 01 01 84 */	stw r0, 0x184(r1)
/* 80A0AEB4  39 61 01 80 */	addi r11, r1, 0x180
/* 80A0AEB8  4B 95 73 25 */	bl _savegpr_29
/* 80A0AEBC  7C 7D 1B 78 */	mr r29, r3
/* 80A0AEC0  3C 60 80 A1 */	lis r3, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A0AEC4  3B E3 C2 70 */	addi r31, r3, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A0AEC8  38 7D 0D C0 */	addi r3, r29, 0xdc0
/* 80A0AECC  4B 95 71 4D */	bl __ptmf_test
/* 80A0AED0  2C 03 00 00 */	cmpwi r3, 0
/* 80A0AED4  41 82 00 18 */	beq lbl_80A0AEEC
/* 80A0AED8  7F A3 EB 78 */	mr r3, r29
/* 80A0AEDC  38 80 00 00 */	li r4, 0
/* 80A0AEE0  39 9D 0D C0 */	addi r12, r29, 0xdc0
/* 80A0AEE4  4B 95 71 A1 */	bl __ptmf_scall
/* 80A0AEE8  60 00 00 00 */	nop 
lbl_80A0AEEC:
/* 80A0AEEC  80 7D 0D D4 */	lwz r3, 0xdd4(r29)
/* 80A0AEF0  3C 03 00 01 */	addis r0, r3, 1
/* 80A0AEF4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A0AEF8  41 82 00 4C */	beq lbl_80A0AF44
/* 80A0AEFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A0AF00  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A0AF04  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 80A0AF08  28 00 00 00 */	cmplwi r0, 0
/* 80A0AF0C  41 82 00 38 */	beq lbl_80A0AF44
/* 80A0AF10  38 7E 4F F8 */	addi r3, r30, 0x4ff8
/* 80A0AF14  4B 63 D4 D5 */	bl getRunEventName__16dEvent_manager_cFv
/* 80A0AF18  3C 80 80 A1 */	lis r4, d_a_npc_impal__stringBase0@ha /* 0x80A0C4C8@ha */
/* 80A0AF1C  38 84 C4 C8 */	addi r4, r4, d_a_npc_impal__stringBase0@l /* 0x80A0C4C8@l */
/* 80A0AF20  38 84 00 4C */	addi r4, r4, 0x4c
/* 80A0AF24  4B 95 DA 71 */	bl strcmp
/* 80A0AF28  2C 03 00 00 */	cmpwi r3, 0
/* 80A0AF2C  40 82 00 18 */	bne lbl_80A0AF44
/* 80A0AF30  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 80A0AF34  80 9D 0D D4 */	lwz r4, 0xdd4(r29)
/* 80A0AF38  4B 63 87 B5 */	bl setPtI_Id__14dEvt_control_cFUi
/* 80A0AF3C  38 00 FF FF */	li r0, -1
/* 80A0AF40  90 1D 0D D4 */	stw r0, 0xdd4(r29)
lbl_80A0AF44:
/* 80A0AF44  80 7F 00 94 */	lwz r3, 0x94(r31)
/* 80A0AF48  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 80A0AF4C  90 61 00 C8 */	stw r3, 0xc8(r1)
/* 80A0AF50  90 01 00 CC */	stw r0, 0xcc(r1)
/* 80A0AF54  80 1F 00 9C */	lwz r0, 0x9c(r31)
/* 80A0AF58  90 01 00 D0 */	stw r0, 0xd0(r1)
/* 80A0AF5C  3B DF 00 00 */	addi r30, r31, 0
/* 80A0AF60  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80A0AF64  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 80A0AF68  80 1F 00 A0 */	lwz r0, 0xa0(r31)
/* 80A0AF6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A0AF70  38 01 00 C8 */	addi r0, r1, 0xc8
/* 80A0AF74  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A0AF78  80 7F 00 A4 */	lwz r3, 0xa4(r31)
/* 80A0AF7C  80 1F 00 A8 */	lwz r0, 0xa8(r31)
/* 80A0AF80  90 61 00 D4 */	stw r3, 0xd4(r1)
/* 80A0AF84  90 01 00 D8 */	stw r0, 0xd8(r1)
/* 80A0AF88  80 1F 00 AC */	lwz r0, 0xac(r31)
/* 80A0AF8C  90 01 00 DC */	stw r0, 0xdc(r1)
/* 80A0AF90  D0 01 00 D8 */	stfs f0, 0xd8(r1)
/* 80A0AF94  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80A0AF98  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A0AF9C  38 01 00 D4 */	addi r0, r1, 0xd4
/* 80A0AFA0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A0AFA4  80 7F 00 B4 */	lwz r3, 0xb4(r31)
/* 80A0AFA8  80 1F 00 B8 */	lwz r0, 0xb8(r31)
/* 80A0AFAC  90 61 00 E0 */	stw r3, 0xe0(r1)
/* 80A0AFB0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80A0AFB4  80 1F 00 BC */	lwz r0, 0xbc(r31)
/* 80A0AFB8  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 80A0AFBC  D0 01 00 E4 */	stfs f0, 0xe4(r1)
/* 80A0AFC0  80 1F 00 C0 */	lwz r0, 0xc0(r31)
/* 80A0AFC4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A0AFC8  38 01 00 E0 */	addi r0, r1, 0xe0
/* 80A0AFCC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A0AFD0  80 7F 00 C4 */	lwz r3, 0xc4(r31)
/* 80A0AFD4  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 80A0AFD8  90 61 00 EC */	stw r3, 0xec(r1)
/* 80A0AFDC  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 80A0AFE0  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 80A0AFE4  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80A0AFE8  D0 01 00 F0 */	stfs f0, 0xf0(r1)
/* 80A0AFEC  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 80A0AFF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0AFF4  38 01 00 EC */	addi r0, r1, 0xec
/* 80A0AFF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A0AFFC  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 80A0B000  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 80A0B004  90 61 00 F8 */	stw r3, 0xf8(r1)
/* 80A0B008  90 01 00 FC */	stw r0, 0xfc(r1)
/* 80A0B00C  80 1F 00 DC */	lwz r0, 0xdc(r31)
/* 80A0B010  90 01 01 00 */	stw r0, 0x100(r1)
/* 80A0B014  D0 01 00 FC */	stfs f0, 0xfc(r1)
/* 80A0B018  80 1F 00 E0 */	lwz r0, 0xe0(r31)
/* 80A0B01C  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A0B020  38 01 00 F8 */	addi r0, r1, 0xf8
/* 80A0B024  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A0B028  80 7F 00 E4 */	lwz r3, 0xe4(r31)
/* 80A0B02C  80 1F 00 E8 */	lwz r0, 0xe8(r31)
/* 80A0B030  90 61 01 04 */	stw r3, 0x104(r1)
/* 80A0B034  90 01 01 08 */	stw r0, 0x108(r1)
/* 80A0B038  80 1F 00 EC */	lwz r0, 0xec(r31)
/* 80A0B03C  90 01 01 0C */	stw r0, 0x10c(r1)
/* 80A0B040  D0 01 01 08 */	stfs f0, 0x108(r1)
/* 80A0B044  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80A0B048  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A0B04C  38 01 01 04 */	addi r0, r1, 0x104
/* 80A0B050  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A0B054  80 7F 00 F4 */	lwz r3, 0xf4(r31)
/* 80A0B058  80 1F 00 F8 */	lwz r0, 0xf8(r31)
/* 80A0B05C  90 61 01 10 */	stw r3, 0x110(r1)
/* 80A0B060  90 01 01 14 */	stw r0, 0x114(r1)
/* 80A0B064  80 1F 00 FC */	lwz r0, 0xfc(r31)
/* 80A0B068  90 01 01 18 */	stw r0, 0x118(r1)
/* 80A0B06C  D0 01 01 14 */	stfs f0, 0x114(r1)
/* 80A0B070  80 1F 01 00 */	lwz r0, 0x100(r31)
/* 80A0B074  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A0B078  38 01 01 10 */	addi r0, r1, 0x110
/* 80A0B07C  90 01 00 30 */	stw r0, 0x30(r1)
/* 80A0B080  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 80A0B084  80 1F 01 08 */	lwz r0, 0x108(r31)
/* 80A0B088  90 61 01 1C */	stw r3, 0x11c(r1)
/* 80A0B08C  90 01 01 20 */	stw r0, 0x120(r1)
/* 80A0B090  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80A0B094  90 01 01 24 */	stw r0, 0x124(r1)
/* 80A0B098  D0 01 01 20 */	stfs f0, 0x120(r1)
/* 80A0B09C  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 80A0B0A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A0B0A4  38 01 01 1C */	addi r0, r1, 0x11c
/* 80A0B0A8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A0B0AC  38 A1 01 40 */	addi r5, r1, 0x140
/* 80A0B0B0  38 9F 01 10 */	addi r4, r31, 0x110
/* 80A0B0B4  38 00 00 04 */	li r0, 4
/* 80A0B0B8  7C 09 03 A6 */	mtctr r0
lbl_80A0B0BC:
/* 80A0B0BC  80 64 00 04 */	lwz r3, 4(r4)
/* 80A0B0C0  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A0B0C4  90 65 00 04 */	stw r3, 4(r5)
/* 80A0B0C8  94 05 00 08 */	stwu r0, 8(r5)
/* 80A0B0CC  42 00 FF F0 */	bdnz lbl_80A0B0BC
/* 80A0B0D0  38 01 00 18 */	addi r0, r1, 0x18
/* 80A0B0D4  90 01 01 44 */	stw r0, 0x144(r1)
/* 80A0B0D8  38 01 00 1C */	addi r0, r1, 0x1c
/* 80A0B0DC  90 01 01 48 */	stw r0, 0x148(r1)
/* 80A0B0E0  38 01 00 20 */	addi r0, r1, 0x20
/* 80A0B0E4  90 01 01 4C */	stw r0, 0x14c(r1)
/* 80A0B0E8  38 01 00 24 */	addi r0, r1, 0x24
/* 80A0B0EC  90 01 01 50 */	stw r0, 0x150(r1)
/* 80A0B0F0  38 01 00 28 */	addi r0, r1, 0x28
/* 80A0B0F4  90 01 01 54 */	stw r0, 0x154(r1)
/* 80A0B0F8  38 01 00 2C */	addi r0, r1, 0x2c
/* 80A0B0FC  90 01 01 58 */	stw r0, 0x158(r1)
/* 80A0B100  38 01 00 30 */	addi r0, r1, 0x30
/* 80A0B104  90 01 01 5C */	stw r0, 0x15c(r1)
/* 80A0B108  38 01 00 34 */	addi r0, r1, 0x34
/* 80A0B10C  90 01 01 60 */	stw r0, 0x160(r1)
/* 80A0B110  A8 7D 09 DE */	lha r3, 0x9de(r29)
/* 80A0B114  7C 60 07 35 */	extsh. r0, r3
/* 80A0B118  41 80 00 18 */	blt lbl_80A0B130
/* 80A0B11C  2C 03 00 08 */	cmpwi r3, 8
/* 80A0B120  40 80 00 10 */	bge lbl_80A0B130
/* 80A0B124  7F A3 EB 78 */	mr r3, r29
/* 80A0B128  38 81 01 44 */	addi r4, r1, 0x144
/* 80A0B12C  4B 74 80 25 */	bl playExpressionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80A0B130:
/* 80A0B130  80 7F 01 34 */	lwz r3, 0x134(r31)
/* 80A0B134  80 1F 01 38 */	lwz r0, 0x138(r31)
/* 80A0B138  90 61 00 50 */	stw r3, 0x50(r1)
/* 80A0B13C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80A0B140  80 1F 01 3C */	lwz r0, 0x13c(r31)
/* 80A0B144  90 01 00 58 */	stw r0, 0x58(r1)
/* 80A0B148  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80A0B14C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80A0B150  80 1F 01 40 */	lwz r0, 0x140(r31)
/* 80A0B154  90 01 00 08 */	stw r0, 8(r1)
/* 80A0B158  38 01 00 50 */	addi r0, r1, 0x50
/* 80A0B15C  90 01 00 08 */	stw r0, 8(r1)
/* 80A0B160  80 7F 01 44 */	lwz r3, 0x144(r31)
/* 80A0B164  80 1F 01 48 */	lwz r0, 0x148(r31)
/* 80A0B168  90 61 00 5C */	stw r3, 0x5c(r1)
/* 80A0B16C  90 01 00 60 */	stw r0, 0x60(r1)
/* 80A0B170  80 1F 01 4C */	lwz r0, 0x14c(r31)
/* 80A0B174  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A0B178  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80A0B17C  80 7F 01 50 */	lwz r3, 0x150(r31)
/* 80A0B180  80 1F 01 54 */	lwz r0, 0x154(r31)
/* 80A0B184  90 61 00 68 */	stw r3, 0x68(r1)
/* 80A0B188  90 01 00 6C */	stw r0, 0x6c(r1)
/* 80A0B18C  80 1F 01 58 */	lwz r0, 0x158(r31)
/* 80A0B190  90 01 00 70 */	stw r0, 0x70(r1)
/* 80A0B194  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80A0B198  80 7F 01 5C */	lwz r3, 0x15c(r31)
/* 80A0B19C  80 1F 01 60 */	lwz r0, 0x160(r31)
/* 80A0B1A0  90 61 00 38 */	stw r3, 0x38(r1)
/* 80A0B1A4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A0B1A8  38 01 00 5C */	addi r0, r1, 0x5c
/* 80A0B1AC  90 01 00 38 */	stw r0, 0x38(r1)
/* 80A0B1B0  38 01 00 68 */	addi r0, r1, 0x68
/* 80A0B1B4  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80A0B1B8  80 7F 01 64 */	lwz r3, 0x164(r31)
/* 80A0B1BC  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 80A0B1C0  90 61 00 74 */	stw r3, 0x74(r1)
/* 80A0B1C4  90 01 00 78 */	stw r0, 0x78(r1)
/* 80A0B1C8  80 1F 01 6C */	lwz r0, 0x16c(r31)
/* 80A0B1CC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80A0B1D0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A0B1D4  80 1F 01 70 */	lwz r0, 0x170(r31)
/* 80A0B1D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A0B1DC  38 01 00 74 */	addi r0, r1, 0x74
/* 80A0B1E0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A0B1E4  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 80A0B1E8  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80A0B1EC  90 61 00 80 */	stw r3, 0x80(r1)
/* 80A0B1F0  90 01 00 84 */	stw r0, 0x84(r1)
/* 80A0B1F4  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 80A0B1F8  90 01 00 88 */	stw r0, 0x88(r1)
/* 80A0B1FC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80A0B200  80 1F 01 80 */	lwz r0, 0x180(r31)
/* 80A0B204  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A0B208  38 01 00 80 */	addi r0, r1, 0x80
/* 80A0B20C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A0B210  80 7F 01 84 */	lwz r3, 0x184(r31)
/* 80A0B214  80 1F 01 88 */	lwz r0, 0x188(r31)
/* 80A0B218  90 61 00 8C */	stw r3, 0x8c(r1)
/* 80A0B21C  90 01 00 90 */	stw r0, 0x90(r1)
/* 80A0B220  80 1F 01 8C */	lwz r0, 0x18c(r31)
/* 80A0B224  90 01 00 94 */	stw r0, 0x94(r1)
/* 80A0B228  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 80A0B22C  80 7F 01 90 */	lwz r3, 0x190(r31)
/* 80A0B230  80 1F 01 94 */	lwz r0, 0x194(r31)
/* 80A0B234  90 61 00 98 */	stw r3, 0x98(r1)
/* 80A0B238  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80A0B23C  80 1F 01 98 */	lwz r0, 0x198(r31)
/* 80A0B240  90 01 00 A0 */	stw r0, 0xa0(r1)
/* 80A0B244  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80A0B248  80 7F 01 9C */	lwz r3, 0x19c(r31)
/* 80A0B24C  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 80A0B250  90 61 00 40 */	stw r3, 0x40(r1)
/* 80A0B254  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A0B258  38 01 00 8C */	addi r0, r1, 0x8c
/* 80A0B25C  90 01 00 40 */	stw r0, 0x40(r1)
/* 80A0B260  38 01 00 98 */	addi r0, r1, 0x98
/* 80A0B264  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A0B268  80 7F 01 A4 */	lwz r3, 0x1a4(r31)
/* 80A0B26C  80 1F 01 A8 */	lwz r0, 0x1a8(r31)
/* 80A0B270  90 61 00 A4 */	stw r3, 0xa4(r1)
/* 80A0B274  90 01 00 A8 */	stw r0, 0xa8(r1)
/* 80A0B278  80 1F 01 AC */	lwz r0, 0x1ac(r31)
/* 80A0B27C  90 01 00 AC */	stw r0, 0xac(r1)
/* 80A0B280  80 7F 01 B0 */	lwz r3, 0x1b0(r31)
/* 80A0B284  80 1F 01 B4 */	lwz r0, 0x1b4(r31)
/* 80A0B288  90 61 00 B0 */	stw r3, 0xb0(r1)
/* 80A0B28C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80A0B290  80 1F 01 B8 */	lwz r0, 0x1b8(r31)
/* 80A0B294  90 01 00 B8 */	stw r0, 0xb8(r1)
/* 80A0B298  80 7F 01 BC */	lwz r3, 0x1bc(r31)
/* 80A0B29C  80 1F 01 C0 */	lwz r0, 0x1c0(r31)
/* 80A0B2A0  90 61 00 48 */	stw r3, 0x48(r1)
/* 80A0B2A4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A0B2A8  38 01 00 A4 */	addi r0, r1, 0xa4
/* 80A0B2AC  90 01 00 48 */	stw r0, 0x48(r1)
/* 80A0B2B0  38 01 00 B0 */	addi r0, r1, 0xb0
/* 80A0B2B4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80A0B2B8  80 7F 01 C4 */	lwz r3, 0x1c4(r31)
/* 80A0B2BC  80 1F 01 C8 */	lwz r0, 0x1c8(r31)
/* 80A0B2C0  90 61 00 BC */	stw r3, 0xbc(r1)
/* 80A0B2C4  90 01 00 C0 */	stw r0, 0xc0(r1)
/* 80A0B2C8  80 1F 01 CC */	lwz r0, 0x1cc(r31)
/* 80A0B2CC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80A0B2D0  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 80A0B2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0B2D8  38 01 00 BC */	addi r0, r1, 0xbc
/* 80A0B2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0B2E0  38 A1 01 24 */	addi r5, r1, 0x124
/* 80A0B2E4  38 9F 01 D0 */	addi r4, r31, 0x1d0
/* 80A0B2E8  38 00 00 03 */	li r0, 3
/* 80A0B2EC  7C 09 03 A6 */	mtctr r0
lbl_80A0B2F0:
/* 80A0B2F0  80 64 00 04 */	lwz r3, 4(r4)
/* 80A0B2F4  84 04 00 08 */	lwzu r0, 8(r4)
/* 80A0B2F8  90 65 00 04 */	stw r3, 4(r5)
/* 80A0B2FC  94 05 00 08 */	stwu r0, 8(r5)
/* 80A0B300  42 00 FF F0 */	bdnz lbl_80A0B2F0
/* 80A0B304  80 04 00 04 */	lwz r0, 4(r4)
/* 80A0B308  90 05 00 04 */	stw r0, 4(r5)
/* 80A0B30C  38 01 00 08 */	addi r0, r1, 8
/* 80A0B310  90 01 01 28 */	stw r0, 0x128(r1)
/* 80A0B314  38 01 00 38 */	addi r0, r1, 0x38
/* 80A0B318  90 01 01 2C */	stw r0, 0x12c(r1)
/* 80A0B31C  38 01 00 0C */	addi r0, r1, 0xc
/* 80A0B320  90 01 01 30 */	stw r0, 0x130(r1)
/* 80A0B324  38 01 00 10 */	addi r0, r1, 0x10
/* 80A0B328  90 01 01 34 */	stw r0, 0x134(r1)
/* 80A0B32C  38 01 00 40 */	addi r0, r1, 0x40
/* 80A0B330  90 01 01 38 */	stw r0, 0x138(r1)
/* 80A0B334  38 01 00 48 */	addi r0, r1, 0x48
/* 80A0B338  90 01 01 3C */	stw r0, 0x13c(r1)
/* 80A0B33C  38 01 00 14 */	addi r0, r1, 0x14
/* 80A0B340  90 01 01 40 */	stw r0, 0x140(r1)
/* 80A0B344  A8 7D 09 E0 */	lha r3, 0x9e0(r29)
/* 80A0B348  7C 60 07 35 */	extsh. r0, r3
/* 80A0B34C  41 80 00 18 */	blt lbl_80A0B364
/* 80A0B350  2C 03 00 07 */	cmpwi r3, 7
/* 80A0B354  40 80 00 10 */	bge lbl_80A0B364
/* 80A0B358  7F A3 EB 78 */	mr r3, r29
/* 80A0B35C  38 81 01 28 */	addi r4, r1, 0x128
/* 80A0B360  4B 74 7F 05 */	bl playMotionAnm__8daNpcF_cFPPPQ28daNpcF_c18daNpcF_anmPlayData
lbl_80A0B364:
/* 80A0B364  38 60 00 01 */	li r3, 1
/* 80A0B368  39 61 01 80 */	addi r11, r1, 0x180
/* 80A0B36C  4B 95 6E BD */	bl _restgpr_29
/* 80A0B370  80 01 01 84 */	lwz r0, 0x184(r1)
/* 80A0B374  7C 08 03 A6 */	mtlr r0
/* 80A0B378  38 21 01 80 */	addi r1, r1, 0x180
/* 80A0B37C  4E 80 00 20 */	blr 

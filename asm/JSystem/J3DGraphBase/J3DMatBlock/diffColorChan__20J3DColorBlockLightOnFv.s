lbl_8031A4D4:
/* 8031A4D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031A4D8  7C 08 02 A6 */	mflr r0
/* 8031A4DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031A4E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031A4E4  7C 7F 1B 78 */	mr r31, r3
/* 8031A4E8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A4EC  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A4F0  80 0D 83 E8 */	lwz r0, SizeOfLoadColorChans(r13)
/* 8031A4F4  7C 63 02 14 */	add r3, r3, r0
/* 8031A4F8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8031A4FC  7C 03 00 40 */	cmplw r3, r0
/* 8031A500  40 81 00 08 */	ble lbl_8031A508
/* 8031A504  48 04 6B D1 */	bl GDOverflowed
lbl_8031A508:
/* 8031A508  38 E0 00 10 */	li r7, 0x10
/* 8031A50C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A510  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A514  38 03 00 01 */	addi r0, r3, 1
/* 8031A518  90 04 00 08 */	stw r0, 8(r4)
/* 8031A51C  98 E3 00 00 */	stb r7, 0(r3)
/* 8031A520  38 00 00 00 */	li r0, 0
/* 8031A524  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031A528  80 85 00 08 */	lwz r4, 8(r5)
/* 8031A52C  38 64 00 01 */	addi r3, r4, 1
/* 8031A530  90 65 00 08 */	stw r3, 8(r5)
/* 8031A534  98 04 00 00 */	stb r0, 0(r4)
/* 8031A538  38 C0 00 03 */	li r6, 3
/* 8031A53C  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031A540  80 85 00 08 */	lwz r4, 8(r5)
/* 8031A544  38 64 00 01 */	addi r3, r4, 1
/* 8031A548  90 65 00 08 */	stw r3, 8(r5)
/* 8031A54C  98 C4 00 00 */	stb r6, 0(r4)
/* 8031A550  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031A554  80 85 00 08 */	lwz r4, 8(r5)
/* 8031A558  38 64 00 01 */	addi r3, r4, 1
/* 8031A55C  90 65 00 08 */	stw r3, 8(r5)
/* 8031A560  98 E4 00 00 */	stb r7, 0(r4)
/* 8031A564  38 C0 00 0E */	li r6, 0xe
/* 8031A568  80 AD 94 00 */	lwz r5, __GDCurrentDL(r13)
/* 8031A56C  80 85 00 08 */	lwz r4, 8(r5)
/* 8031A570  38 64 00 01 */	addi r3, r4, 1
/* 8031A574  90 65 00 08 */	stw r3, 8(r5)
/* 8031A578  98 C4 00 00 */	stb r6, 0(r4)
/* 8031A57C  80 62 C9 A8 */	lwz r3, lit_585(r2)
/* 8031A580  90 61 00 14 */	stw r3, 0x14(r1)
/* 8031A584  A1 9F 00 16 */	lhz r12, 0x16(r31)
/* 8031A588  55 84 BF BE */	rlwinm r4, r12, 0x17, 0x1e, 0x1f
/* 8031A58C  38 61 00 14 */	addi r3, r1, 0x14
/* 8031A590  7D 63 20 AE */	lbzx r11, r3, r4
/* 8031A594  55 8A CF BE */	rlwinm r10, r12, 0x19, 0x1e, 0x1f
/* 8031A598  55 83 CE 36 */	rlwinm r3, r12, 0x19, 0x18, 0x1b
/* 8031A59C  51 83 F7 3E */	rlwimi r3, r12, 0x1e, 0x1c, 0x1f
/* 8031A5A0  54 69 06 3E */	clrlwi r9, r3, 0x18
/* 8031A5A4  55 88 07 FE */	clrlwi r8, r12, 0x1f
/* 8031A5A8  54 66 3C 68 */	rlwinm r6, r3, 7, 0x11, 0x14
/* 8031A5AC  30 6B FF FF */	addic r3, r11, -1
/* 8031A5B0  7C 63 59 10 */	subfe r3, r3, r11
/* 8031A5B4  54 65 53 AA */	rlwinm r5, r3, 0xa, 0xe, 0x15
/* 8031A5B8  20 8B 00 02 */	subfic r4, r11, 2
/* 8031A5BC  30 64 FF FF */	addic r3, r4, -1
/* 8031A5C0  7C 63 21 10 */	subfe r3, r3, r4
/* 8031A5C4  54 63 4B EC */	rlwinm r3, r3, 9, 0xf, 0x16
/* 8031A5C8  51 88 07 BC */	rlwimi r8, r12, 0, 0x1e, 0x1e
/* 8031A5CC  51 28 16 BA */	rlwimi r8, r9, 2, 0x1a, 0x1d
/* 8031A5D0  51 88 06 72 */	rlwimi r8, r12, 0, 0x19, 0x19
/* 8031A5D4  2C 0B 00 00 */	cmpwi r11, 0
/* 8031A5D8  40 82 00 08 */	bne lbl_8031A5E0
/* 8031A5DC  7C 0A 03 78 */	mr r10, r0
lbl_8031A5E0:
/* 8031A5E0  55 40 38 30 */	slwi r0, r10, 7
/* 8031A5E4  7D 00 03 78 */	or r0, r8, r0
/* 8031A5E8  7C 60 03 78 */	or r0, r3, r0
/* 8031A5EC  7C A0 03 78 */	or r0, r5, r0
/* 8031A5F0  7C C6 03 78 */	or r6, r6, r0
/* 8031A5F4  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8031A5F8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A5FC  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A600  38 03 00 01 */	addi r0, r3, 1
/* 8031A604  90 04 00 08 */	stw r0, 8(r4)
/* 8031A608  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A60C  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8031A610  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A614  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A618  38 03 00 01 */	addi r0, r3, 1
/* 8031A61C  90 04 00 08 */	stw r0, 8(r4)
/* 8031A620  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A624  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8031A628  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A62C  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A630  38 03 00 01 */	addi r0, r3, 1
/* 8031A634  90 04 00 08 */	stw r0, 8(r4)
/* 8031A638  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A63C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A640  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A644  38 03 00 01 */	addi r0, r3, 1
/* 8031A648  90 04 00 08 */	stw r0, 8(r4)
/* 8031A64C  98 C3 00 00 */	stb r6, 0(r3)
/* 8031A650  80 02 C9 A8 */	lwz r0, lit_585(r2)
/* 8031A654  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031A658  A1 7F 00 1A */	lhz r11, 0x1a(r31)
/* 8031A65C  55 60 BF BE */	rlwinm r0, r11, 0x17, 0x1e, 0x1f
/* 8031A660  38 61 00 10 */	addi r3, r1, 0x10
/* 8031A664  7D 43 00 AE */	lbzx r10, r3, r0
/* 8031A668  55 69 CF BE */	rlwinm r9, r11, 0x19, 0x1e, 0x1f
/* 8031A66C  55 60 CE 36 */	rlwinm r0, r11, 0x19, 0x18, 0x1b
/* 8031A670  51 60 F7 3E */	rlwimi r0, r11, 0x1e, 0x1c, 0x1f
/* 8031A674  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 8031A678  55 67 07 FE */	clrlwi r7, r11, 0x1f
/* 8031A67C  54 05 3C 68 */	rlwinm r5, r0, 7, 0x11, 0x14
/* 8031A680  30 0A FF FF */	addic r0, r10, -1
/* 8031A684  7C 00 51 10 */	subfe r0, r0, r10
/* 8031A688  54 04 53 AA */	rlwinm r4, r0, 0xa, 0xe, 0x15
/* 8031A68C  20 6A 00 02 */	subfic r3, r10, 2
/* 8031A690  30 03 FF FF */	addic r0, r3, -1
/* 8031A694  7C 00 19 10 */	subfe r0, r0, r3
/* 8031A698  54 03 4B EC */	rlwinm r3, r0, 9, 0xf, 0x16
/* 8031A69C  51 67 07 BC */	rlwimi r7, r11, 0, 0x1e, 0x1e
/* 8031A6A0  51 07 16 BA */	rlwimi r7, r8, 2, 0x1a, 0x1d
/* 8031A6A4  51 67 06 72 */	rlwimi r7, r11, 0, 0x19, 0x19
/* 8031A6A8  2C 0A 00 00 */	cmpwi r10, 0
/* 8031A6AC  40 82 00 08 */	bne lbl_8031A6B4
/* 8031A6B0  39 20 00 00 */	li r9, 0
lbl_8031A6B4:
/* 8031A6B4  55 20 38 30 */	slwi r0, r9, 7
/* 8031A6B8  7C E0 03 78 */	or r0, r7, r0
/* 8031A6BC  7C 60 03 78 */	or r0, r3, r0
/* 8031A6C0  7C 80 03 78 */	or r0, r4, r0
/* 8031A6C4  7C A6 03 78 */	or r6, r5, r0
/* 8031A6C8  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8031A6CC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A6D0  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A6D4  38 03 00 01 */	addi r0, r3, 1
/* 8031A6D8  90 04 00 08 */	stw r0, 8(r4)
/* 8031A6DC  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A6E0  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8031A6E4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A6E8  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A6EC  38 03 00 01 */	addi r0, r3, 1
/* 8031A6F0  90 04 00 08 */	stw r0, 8(r4)
/* 8031A6F4  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A6F8  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8031A6FC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A700  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A704  38 03 00 01 */	addi r0, r3, 1
/* 8031A708  90 04 00 08 */	stw r0, 8(r4)
/* 8031A70C  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A710  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A714  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A718  38 03 00 01 */	addi r0, r3, 1
/* 8031A71C  90 04 00 08 */	stw r0, 8(r4)
/* 8031A720  98 C3 00 00 */	stb r6, 0(r3)
/* 8031A724  80 02 C9 A8 */	lwz r0, lit_585(r2)
/* 8031A728  90 01 00 0C */	stw r0, 0xc(r1)
/* 8031A72C  A1 7F 00 18 */	lhz r11, 0x18(r31)
/* 8031A730  55 60 BF BE */	rlwinm r0, r11, 0x17, 0x1e, 0x1f
/* 8031A734  38 61 00 0C */	addi r3, r1, 0xc
/* 8031A738  7D 43 00 AE */	lbzx r10, r3, r0
/* 8031A73C  55 69 CF BE */	rlwinm r9, r11, 0x19, 0x1e, 0x1f
/* 8031A740  55 60 CE 36 */	rlwinm r0, r11, 0x19, 0x18, 0x1b
/* 8031A744  51 60 F7 3E */	rlwimi r0, r11, 0x1e, 0x1c, 0x1f
/* 8031A748  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 8031A74C  55 67 07 FE */	clrlwi r7, r11, 0x1f
/* 8031A750  54 05 3C 68 */	rlwinm r5, r0, 7, 0x11, 0x14
/* 8031A754  30 0A FF FF */	addic r0, r10, -1
/* 8031A758  7C 00 51 10 */	subfe r0, r0, r10
/* 8031A75C  54 04 53 AA */	rlwinm r4, r0, 0xa, 0xe, 0x15
/* 8031A760  20 6A 00 02 */	subfic r3, r10, 2
/* 8031A764  30 03 FF FF */	addic r0, r3, -1
/* 8031A768  7C 00 19 10 */	subfe r0, r0, r3
/* 8031A76C  54 03 4B EC */	rlwinm r3, r0, 9, 0xf, 0x16
/* 8031A770  51 67 07 BC */	rlwimi r7, r11, 0, 0x1e, 0x1e
/* 8031A774  51 07 16 BA */	rlwimi r7, r8, 2, 0x1a, 0x1d
/* 8031A778  51 67 06 72 */	rlwimi r7, r11, 0, 0x19, 0x19
/* 8031A77C  2C 0A 00 00 */	cmpwi r10, 0
/* 8031A780  40 82 00 08 */	bne lbl_8031A788
/* 8031A784  39 20 00 00 */	li r9, 0
lbl_8031A788:
/* 8031A788  55 20 38 30 */	slwi r0, r9, 7
/* 8031A78C  7C E0 03 78 */	or r0, r7, r0
/* 8031A790  7C 60 03 78 */	or r0, r3, r0
/* 8031A794  7C 80 03 78 */	or r0, r4, r0
/* 8031A798  7C A6 03 78 */	or r6, r5, r0
/* 8031A79C  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8031A7A0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A7A4  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A7A8  38 03 00 01 */	addi r0, r3, 1
/* 8031A7AC  90 04 00 08 */	stw r0, 8(r4)
/* 8031A7B0  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A7B4  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8031A7B8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A7BC  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A7C0  38 03 00 01 */	addi r0, r3, 1
/* 8031A7C4  90 04 00 08 */	stw r0, 8(r4)
/* 8031A7C8  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A7CC  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8031A7D0  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A7D4  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A7D8  38 03 00 01 */	addi r0, r3, 1
/* 8031A7DC  90 04 00 08 */	stw r0, 8(r4)
/* 8031A7E0  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A7E4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A7E8  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A7EC  38 03 00 01 */	addi r0, r3, 1
/* 8031A7F0  90 04 00 08 */	stw r0, 8(r4)
/* 8031A7F4  98 C3 00 00 */	stb r6, 0(r3)
/* 8031A7F8  80 02 C9 A8 */	lwz r0, lit_585(r2)
/* 8031A7FC  90 01 00 08 */	stw r0, 8(r1)
/* 8031A800  A1 7F 00 1C */	lhz r11, 0x1c(r31)
/* 8031A804  55 60 BF BE */	rlwinm r0, r11, 0x17, 0x1e, 0x1f
/* 8031A808  38 61 00 08 */	addi r3, r1, 8
/* 8031A80C  7D 43 00 AE */	lbzx r10, r3, r0
/* 8031A810  55 69 CF BE */	rlwinm r9, r11, 0x19, 0x1e, 0x1f
/* 8031A814  55 60 CE 36 */	rlwinm r0, r11, 0x19, 0x18, 0x1b
/* 8031A818  51 60 F7 3E */	rlwimi r0, r11, 0x1e, 0x1c, 0x1f
/* 8031A81C  54 08 06 3E */	clrlwi r8, r0, 0x18
/* 8031A820  55 67 07 FE */	clrlwi r7, r11, 0x1f
/* 8031A824  54 05 3C 68 */	rlwinm r5, r0, 7, 0x11, 0x14
/* 8031A828  30 0A FF FF */	addic r0, r10, -1
/* 8031A82C  7C 00 51 10 */	subfe r0, r0, r10
/* 8031A830  54 04 53 AA */	rlwinm r4, r0, 0xa, 0xe, 0x15
/* 8031A834  20 6A 00 02 */	subfic r3, r10, 2
/* 8031A838  30 03 FF FF */	addic r0, r3, -1
/* 8031A83C  7C 00 19 10 */	subfe r0, r0, r3
/* 8031A840  54 03 4B EC */	rlwinm r3, r0, 9, 0xf, 0x16
/* 8031A844  51 67 07 BC */	rlwimi r7, r11, 0, 0x1e, 0x1e
/* 8031A848  51 07 16 BA */	rlwimi r7, r8, 2, 0x1a, 0x1d
/* 8031A84C  51 67 06 72 */	rlwimi r7, r11, 0, 0x19, 0x19
/* 8031A850  2C 0A 00 00 */	cmpwi r10, 0
/* 8031A854  40 82 00 08 */	bne lbl_8031A85C
/* 8031A858  39 20 00 00 */	li r9, 0
lbl_8031A85C:
/* 8031A85C  55 20 38 30 */	slwi r0, r9, 7
/* 8031A860  7C E0 03 78 */	or r0, r7, r0
/* 8031A864  7C 60 03 78 */	or r0, r3, r0
/* 8031A868  7C 80 03 78 */	or r0, r4, r0
/* 8031A86C  7C A6 03 78 */	or r6, r5, r0
/* 8031A870  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8031A874  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A878  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A87C  38 03 00 01 */	addi r0, r3, 1
/* 8031A880  90 04 00 08 */	stw r0, 8(r4)
/* 8031A884  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A888  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8031A88C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A890  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A894  38 03 00 01 */	addi r0, r3, 1
/* 8031A898  90 04 00 08 */	stw r0, 8(r4)
/* 8031A89C  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A8A0  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8031A8A4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A8A8  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A8AC  38 03 00 01 */	addi r0, r3, 1
/* 8031A8B0  90 04 00 08 */	stw r0, 8(r4)
/* 8031A8B4  98 A3 00 00 */	stb r5, 0(r3)
/* 8031A8B8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8031A8BC  80 64 00 08 */	lwz r3, 8(r4)
/* 8031A8C0  38 03 00 01 */	addi r0, r3, 1
/* 8031A8C4  90 04 00 08 */	stw r0, 8(r4)
/* 8031A8C8  98 C3 00 00 */	stb r6, 0(r3)
/* 8031A8CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031A8D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031A8D4  7C 08 03 A6 */	mtlr r0
/* 8031A8D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8031A8DC  4E 80 00 20 */	blr 

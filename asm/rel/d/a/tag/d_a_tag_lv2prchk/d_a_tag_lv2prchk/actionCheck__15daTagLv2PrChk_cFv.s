lbl_805A4DF4:
/* 805A4DF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A4DF8  7C 08 02 A6 */	mflr r0
/* 805A4DFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A4E00  39 61 00 20 */	addi r11, r1, 0x20
/* 805A4E04  4B DB D3 D4 */	b _savegpr_28
/* 805A4E08  7C 7C 1B 78 */	mr r28, r3
/* 805A4E0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A4E10  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A4E14  88 9C 05 6B */	lbz r4, 0x56b(r28)
/* 805A4E18  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 805A4E1C  7C 05 07 74 */	extsb r5, r0
/* 805A4E20  4B A9 05 40 */	b isSwitch__10dSv_info_cCFii
/* 805A4E24  30 03 FF FF */	addic r0, r3, -1
/* 805A4E28  7C 00 19 10 */	subfe r0, r0, r3
/* 805A4E2C  54 1D 06 3E */	clrlwi r29, r0, 0x18
/* 805A4E30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A4E34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A4E38  88 9C 05 6B */	lbz r4, 0x56b(r28)
/* 805A4E3C  38 84 00 01 */	addi r4, r4, 1
/* 805A4E40  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 805A4E44  7C 05 07 74 */	extsb r5, r0
/* 805A4E48  4B A9 05 18 */	b isSwitch__10dSv_info_cCFii
/* 805A4E4C  30 03 FF FF */	addic r0, r3, -1
/* 805A4E50  7C 00 19 10 */	subfe r0, r0, r3
/* 805A4E54  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 805A4E58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A4E5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A4E60  88 9C 05 6B */	lbz r4, 0x56b(r28)
/* 805A4E64  38 84 00 02 */	addi r4, r4, 2
/* 805A4E68  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 805A4E6C  7C 05 07 74 */	extsb r5, r0
/* 805A4E70  4B A9 04 F0 */	b isSwitch__10dSv_info_cCFii
/* 805A4E74  30 03 FF FF */	addic r0, r3, -1
/* 805A4E78  7C 00 19 10 */	subfe r0, r0, r3
/* 805A4E7C  54 1F 06 3E */	clrlwi r31, r0, 0x18
/* 805A4E80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A4E84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A4E88  88 9C 05 6B */	lbz r4, 0x56b(r28)
/* 805A4E8C  38 84 00 03 */	addi r4, r4, 3
/* 805A4E90  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 805A4E94  7C 05 07 74 */	extsb r5, r0
/* 805A4E98  4B A9 04 C8 */	b isSwitch__10dSv_info_cCFii
/* 805A4E9C  30 03 FF FF */	addic r0, r3, -1
/* 805A4EA0  7C 00 19 10 */	subfe r0, r0, r3
/* 805A4EA4  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 805A4EA8  7C 1E FA 14 */	add r0, r30, r31
/* 805A4EAC  7C 80 1A 14 */	add r4, r0, r3
/* 805A4EB0  7C 9D 22 14 */	add r4, r29, r4
/* 805A4EB4  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 805A4EB8  2C 00 00 64 */	cmpwi r0, 0x64
/* 805A4EBC  41 82 03 48 */	beq lbl_805A5204
/* 805A4EC0  40 80 00 30 */	bge lbl_805A4EF0
/* 805A4EC4  2C 00 00 02 */	cmpwi r0, 2
/* 805A4EC8  41 82 01 6C */	beq lbl_805A5034
/* 805A4ECC  40 80 00 14 */	bge lbl_805A4EE0
/* 805A4ED0  2C 00 00 00 */	cmpwi r0, 0
/* 805A4ED4  41 82 00 34 */	beq lbl_805A4F08
/* 805A4ED8  40 80 00 B8 */	bge lbl_805A4F90
/* 805A4EDC  48 00 03 9C */	b lbl_805A5278
lbl_805A4EE0:
/* 805A4EE0  2C 00 00 04 */	cmpwi r0, 4
/* 805A4EE4  41 82 02 94 */	beq lbl_805A5178
/* 805A4EE8  40 80 03 90 */	bge lbl_805A5278
/* 805A4EEC  48 00 02 0C */	b lbl_805A50F8
lbl_805A4EF0:
/* 805A4EF0  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 805A4EF4  41 82 02 AC */	beq lbl_805A51A0
/* 805A4EF8  40 80 03 80 */	bge lbl_805A5278
/* 805A4EFC  2C 00 00 96 */	cmpwi r0, 0x96
/* 805A4F00  41 82 03 50 */	beq lbl_805A5250
/* 805A4F04  48 00 03 74 */	b lbl_805A5278
lbl_805A4F08:
/* 805A4F08  38 00 00 00 */	li r0, 0
/* 805A4F0C  98 1C 05 6C */	stb r0, 0x56c(r28)
/* 805A4F10  28 1D 00 00 */	cmplwi r29, 0
/* 805A4F14  41 82 00 2C */	beq lbl_805A4F40
/* 805A4F18  28 1E 00 00 */	cmplwi r30, 0
/* 805A4F1C  40 82 00 24 */	bne lbl_805A4F40
/* 805A4F20  28 1F 00 00 */	cmplwi r31, 0
/* 805A4F24  40 82 00 1C */	bne lbl_805A4F40
/* 805A4F28  28 03 00 00 */	cmplwi r3, 0
/* 805A4F2C  40 82 00 14 */	bne lbl_805A4F40
/* 805A4F30  38 00 00 01 */	li r0, 1
/* 805A4F34  98 1C 05 6A */	stb r0, 0x56a(r28)
/* 805A4F38  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A4F3C  48 00 03 3C */	b lbl_805A5278
lbl_805A4F40:
/* 805A4F40  28 03 00 00 */	cmplwi r3, 0
/* 805A4F44  41 82 00 30 */	beq lbl_805A4F74
/* 805A4F48  28 1D 00 00 */	cmplwi r29, 0
/* 805A4F4C  40 82 00 28 */	bne lbl_805A4F74
/* 805A4F50  28 1E 00 00 */	cmplwi r30, 0
/* 805A4F54  40 82 00 20 */	bne lbl_805A4F74
/* 805A4F58  28 1F 00 00 */	cmplwi r31, 0
/* 805A4F5C  40 82 00 18 */	bne lbl_805A4F74
/* 805A4F60  38 00 FF FF */	li r0, -1
/* 805A4F64  98 1C 05 6A */	stb r0, 0x56a(r28)
/* 805A4F68  38 00 00 01 */	li r0, 1
/* 805A4F6C  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A4F70  48 00 03 08 */	b lbl_805A5278
lbl_805A4F74:
/* 805A4F74  28 1E 00 00 */	cmplwi r30, 0
/* 805A4F78  40 82 00 0C */	bne lbl_805A4F84
/* 805A4F7C  28 1F 00 00 */	cmplwi r31, 0
/* 805A4F80  41 82 02 F8 */	beq lbl_805A5278
lbl_805A4F84:
/* 805A4F84  38 00 00 64 */	li r0, 0x64
/* 805A4F88  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A4F8C  48 00 02 EC */	b lbl_805A5278
lbl_805A4F90:
/* 805A4F90  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 805A4F94  7C 00 07 75 */	extsb. r0, r0
/* 805A4F98  40 81 00 50 */	ble lbl_805A4FE8
/* 805A4F9C  28 1D 00 00 */	cmplwi r29, 0
/* 805A4FA0  41 82 00 18 */	beq lbl_805A4FB8
/* 805A4FA4  28 1E 00 00 */	cmplwi r30, 0
/* 805A4FA8  41 82 00 10 */	beq lbl_805A4FB8
/* 805A4FAC  38 00 00 02 */	li r0, 2
/* 805A4FB0  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A4FB4  48 00 02 C4 */	b lbl_805A5278
lbl_805A4FB8:
/* 805A4FB8  28 1D 00 00 */	cmplwi r29, 0
/* 805A4FBC  40 82 00 10 */	bne lbl_805A4FCC
/* 805A4FC0  38 00 00 C8 */	li r0, 0xc8
/* 805A4FC4  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A4FC8  48 00 02 B0 */	b lbl_805A5278
lbl_805A4FCC:
/* 805A4FCC  28 1F 00 00 */	cmplwi r31, 0
/* 805A4FD0  40 82 00 0C */	bne lbl_805A4FDC
/* 805A4FD4  28 03 00 00 */	cmplwi r3, 0
/* 805A4FD8  41 82 02 A0 */	beq lbl_805A5278
lbl_805A4FDC:
/* 805A4FDC  38 00 00 64 */	li r0, 0x64
/* 805A4FE0  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A4FE4  48 00 02 94 */	b lbl_805A5278
lbl_805A4FE8:
/* 805A4FE8  28 03 00 00 */	cmplwi r3, 0
/* 805A4FEC  41 82 00 18 */	beq lbl_805A5004
/* 805A4FF0  28 1F 00 00 */	cmplwi r31, 0
/* 805A4FF4  41 82 00 10 */	beq lbl_805A5004
/* 805A4FF8  38 00 00 02 */	li r0, 2
/* 805A4FFC  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A5000  48 00 02 78 */	b lbl_805A5278
lbl_805A5004:
/* 805A5004  28 03 00 00 */	cmplwi r3, 0
/* 805A5008  40 82 00 10 */	bne lbl_805A5018
/* 805A500C  38 00 00 C8 */	li r0, 0xc8
/* 805A5010  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A5014  48 00 02 64 */	b lbl_805A5278
lbl_805A5018:
/* 805A5018  28 1E 00 00 */	cmplwi r30, 0
/* 805A501C  40 82 00 0C */	bne lbl_805A5028
/* 805A5020  28 1D 00 00 */	cmplwi r29, 0
/* 805A5024  41 82 02 54 */	beq lbl_805A5278
lbl_805A5028:
/* 805A5028  38 00 00 64 */	li r0, 0x64
/* 805A502C  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A5030  48 00 02 48 */	b lbl_805A5278
lbl_805A5034:
/* 805A5034  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 805A5038  7C 00 07 75 */	extsb. r0, r0
/* 805A503C  40 81 00 60 */	ble lbl_805A509C
/* 805A5040  28 1D 00 00 */	cmplwi r29, 0
/* 805A5044  41 82 00 20 */	beq lbl_805A5064
/* 805A5048  28 1E 00 00 */	cmplwi r30, 0
/* 805A504C  41 82 00 18 */	beq lbl_805A5064
/* 805A5050  28 1F 00 00 */	cmplwi r31, 0
/* 805A5054  41 82 00 10 */	beq lbl_805A5064
/* 805A5058  38 00 00 03 */	li r0, 3
/* 805A505C  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A5060  48 00 02 18 */	b lbl_805A5278
lbl_805A5064:
/* 805A5064  28 1D 00 00 */	cmplwi r29, 0
/* 805A5068  41 82 00 0C */	beq lbl_805A5074
/* 805A506C  28 1E 00 00 */	cmplwi r30, 0
/* 805A5070  40 82 00 18 */	bne lbl_805A5088
lbl_805A5074:
/* 805A5074  38 00 00 01 */	li r0, 1
/* 805A5078  98 1C 05 6D */	stb r0, 0x56d(r28)
/* 805A507C  38 00 00 C8 */	li r0, 0xc8
/* 805A5080  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A5084  48 00 01 F4 */	b lbl_805A5278
lbl_805A5088:
/* 805A5088  28 03 00 00 */	cmplwi r3, 0
/* 805A508C  41 82 01 EC */	beq lbl_805A5278
/* 805A5090  38 00 00 64 */	li r0, 0x64
/* 805A5094  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A5098  48 00 01 E0 */	b lbl_805A5278
lbl_805A509C:
/* 805A509C  28 03 00 00 */	cmplwi r3, 0
/* 805A50A0  41 82 00 20 */	beq lbl_805A50C0
/* 805A50A4  28 1F 00 00 */	cmplwi r31, 0
/* 805A50A8  41 82 00 18 */	beq lbl_805A50C0
/* 805A50AC  28 1E 00 00 */	cmplwi r30, 0
/* 805A50B0  41 82 00 10 */	beq lbl_805A50C0
/* 805A50B4  38 00 00 03 */	li r0, 3
/* 805A50B8  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A50BC  48 00 01 BC */	b lbl_805A5278
lbl_805A50C0:
/* 805A50C0  28 03 00 00 */	cmplwi r3, 0
/* 805A50C4  41 82 00 0C */	beq lbl_805A50D0
/* 805A50C8  28 1F 00 00 */	cmplwi r31, 0
/* 805A50CC  40 82 00 18 */	bne lbl_805A50E4
lbl_805A50D0:
/* 805A50D0  38 00 00 01 */	li r0, 1
/* 805A50D4  98 1C 05 6D */	stb r0, 0x56d(r28)
/* 805A50D8  38 00 00 C8 */	li r0, 0xc8
/* 805A50DC  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A50E0  48 00 01 98 */	b lbl_805A5278
lbl_805A50E4:
/* 805A50E4  28 1D 00 00 */	cmplwi r29, 0
/* 805A50E8  41 82 01 90 */	beq lbl_805A5278
/* 805A50EC  38 00 00 64 */	li r0, 0x64
/* 805A50F0  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A50F4  48 00 01 84 */	b lbl_805A5278
lbl_805A50F8:
/* 805A50F8  28 1D 00 00 */	cmplwi r29, 0
/* 805A50FC  41 82 00 28 */	beq lbl_805A5124
/* 805A5100  28 1E 00 00 */	cmplwi r30, 0
/* 805A5104  41 82 00 20 */	beq lbl_805A5124
/* 805A5108  28 1F 00 00 */	cmplwi r31, 0
/* 805A510C  41 82 00 18 */	beq lbl_805A5124
/* 805A5110  28 03 00 00 */	cmplwi r3, 0
/* 805A5114  41 82 00 10 */	beq lbl_805A5124
/* 805A5118  38 00 00 04 */	li r0, 4
/* 805A511C  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A5120  48 00 01 58 */	b lbl_805A5278
lbl_805A5124:
/* 805A5124  88 1C 05 6A */	lbz r0, 0x56a(r28)
/* 805A5128  7C 00 07 75 */	extsb. r0, r0
/* 805A512C  40 81 00 28 */	ble lbl_805A5154
/* 805A5130  28 1D 00 00 */	cmplwi r29, 0
/* 805A5134  41 82 00 14 */	beq lbl_805A5148
/* 805A5138  28 1E 00 00 */	cmplwi r30, 0
/* 805A513C  41 82 00 0C */	beq lbl_805A5148
/* 805A5140  28 1F 00 00 */	cmplwi r31, 0
/* 805A5144  40 82 01 34 */	bne lbl_805A5278
lbl_805A5148:
/* 805A5148  38 00 00 C8 */	li r0, 0xc8
/* 805A514C  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A5150  48 00 01 28 */	b lbl_805A5278
lbl_805A5154:
/* 805A5154  28 03 00 00 */	cmplwi r3, 0
/* 805A5158  41 82 00 14 */	beq lbl_805A516C
/* 805A515C  28 1F 00 00 */	cmplwi r31, 0
/* 805A5160  41 82 00 0C */	beq lbl_805A516C
/* 805A5164  28 1E 00 00 */	cmplwi r30, 0
/* 805A5168  40 82 01 10 */	bne lbl_805A5278
lbl_805A516C:
/* 805A516C  38 00 00 C8 */	li r0, 0xc8
/* 805A5170  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A5174  48 00 01 04 */	b lbl_805A5278
lbl_805A5178:
/* 805A5178  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A517C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A5180  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 805A5184  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 805A5188  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 805A518C  7C 05 07 74 */	extsb r5, r0
/* 805A5190  4B A9 00 70 */	b onSwitch__10dSv_info_cFii
/* 805A5194  38 00 00 01 */	li r0, 1
/* 805A5198  98 1C 05 69 */	stb r0, 0x569(r28)
/* 805A519C  48 00 00 DC */	b lbl_805A5278
lbl_805A51A0:
/* 805A51A0  28 1D 00 00 */	cmplwi r29, 0
/* 805A51A4  40 82 00 2C */	bne lbl_805A51D0
/* 805A51A8  28 1E 00 00 */	cmplwi r30, 0
/* 805A51AC  40 82 00 24 */	bne lbl_805A51D0
/* 805A51B0  28 1F 00 00 */	cmplwi r31, 0
/* 805A51B4  40 82 00 1C */	bne lbl_805A51D0
/* 805A51B8  28 03 00 00 */	cmplwi r3, 0
/* 805A51BC  40 82 00 14 */	bne lbl_805A51D0
/* 805A51C0  38 00 00 00 */	li r0, 0
/* 805A51C4  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A51C8  98 1C 05 6D */	stb r0, 0x56d(r28)
/* 805A51CC  48 00 00 AC */	b lbl_805A5278
lbl_805A51D0:
/* 805A51D0  2C 04 00 01 */	cmpwi r4, 1
/* 805A51D4  41 81 00 10 */	bgt lbl_805A51E4
/* 805A51D8  88 1C 05 6D */	lbz r0, 0x56d(r28)
/* 805A51DC  28 00 00 01 */	cmplwi r0, 1
/* 805A51E0  40 82 00 98 */	bne lbl_805A5278
lbl_805A51E4:
/* 805A51E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805A51E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805A51EC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 805A51F0  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 805A51F4  88 1C 04 BA */	lbz r0, 0x4ba(r28)
/* 805A51F8  7C 05 07 74 */	extsb r5, r0
/* 805A51FC  4B A9 00 04 */	b onSwitch__10dSv_info_cFii
/* 805A5200  48 00 00 78 */	b lbl_805A5278
lbl_805A5204:
/* 805A5204  28 1D 00 00 */	cmplwi r29, 0
/* 805A5208  41 82 00 3C */	beq lbl_805A5244
/* 805A520C  28 1E 00 00 */	cmplwi r30, 0
/* 805A5210  41 82 00 34 */	beq lbl_805A5244
/* 805A5214  28 1F 00 00 */	cmplwi r31, 0
/* 805A5218  41 82 00 2C */	beq lbl_805A5244
/* 805A521C  28 03 00 00 */	cmplwi r3, 0
/* 805A5220  41 82 00 24 */	beq lbl_805A5244
/* 805A5224  88 1C 05 6C */	lbz r0, 0x56c(r28)
/* 805A5228  28 00 00 00 */	cmplwi r0, 0
/* 805A522C  40 82 00 4C */	bne lbl_805A5278
/* 805A5230  7F 83 E3 78 */	mr r3, r28
/* 805A5234  48 00 00 61 */	bl seStartWrong__15daTagLv2PrChk_cFv
/* 805A5238  38 00 00 01 */	li r0, 1
/* 805A523C  98 1C 05 6C */	stb r0, 0x56c(r28)
/* 805A5240  48 00 00 38 */	b lbl_805A5278
lbl_805A5244:
/* 805A5244  38 00 00 C8 */	li r0, 0xc8
/* 805A5248  98 1C 05 68 */	stb r0, 0x568(r28)
/* 805A524C  48 00 00 2C */	b lbl_805A5278
lbl_805A5250:
/* 805A5250  28 1D 00 00 */	cmplwi r29, 0
/* 805A5254  40 82 00 24 */	bne lbl_805A5278
/* 805A5258  28 1E 00 00 */	cmplwi r30, 0
/* 805A525C  40 82 00 1C */	bne lbl_805A5278
/* 805A5260  28 1F 00 00 */	cmplwi r31, 0
/* 805A5264  40 82 00 14 */	bne lbl_805A5278
/* 805A5268  28 03 00 00 */	cmplwi r3, 0
/* 805A526C  40 82 00 0C */	bne lbl_805A5278
/* 805A5270  38 00 00 00 */	li r0, 0
/* 805A5274  98 1C 05 68 */	stb r0, 0x568(r28)
lbl_805A5278:
/* 805A5278  39 61 00 20 */	addi r11, r1, 0x20
/* 805A527C  4B DB CF A8 */	b _restgpr_28
/* 805A5280  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A5284  7C 08 03 A6 */	mtlr r0
/* 805A5288  38 21 00 20 */	addi r1, r1, 0x20
/* 805A528C  4E 80 00 20 */	blr 

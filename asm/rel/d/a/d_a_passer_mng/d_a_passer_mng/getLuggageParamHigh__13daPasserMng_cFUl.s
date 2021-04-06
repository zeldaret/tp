lbl_80D45E14:
/* 80D45E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D45E18  7C 08 02 A6 */	mflr r0
/* 80D45E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D45E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D45E24  3B E0 00 00 */	li r31, 0
/* 80D45E28  28 04 00 1D */	cmplwi r4, 0x1d
/* 80D45E2C  41 81 08 B8 */	bgt lbl_80D466E4
/* 80D45E30  3C 60 80 D4 */	lis r3, lit_4305@ha /* 0x80D46D38@ha */
/* 80D45E34  38 63 6D 38 */	addi r3, r3, lit_4305@l /* 0x80D46D38@l */
/* 80D45E38  54 80 10 3A */	slwi r0, r4, 2
/* 80D45E3C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D45E40  7C 09 03 A6 */	mtctr r0
/* 80D45E44  4E 80 04 20 */	bctr 
lbl_80D45E48:
/* 80D45E48  38 60 00 00 */	li r3, 0
/* 80D45E4C  38 80 00 02 */	li r4, 2
/* 80D45E50  48 00 0D 4D */	bl func_80D46B9C
/* 80D45E54  2C 03 00 00 */	cmpwi r3, 0
/* 80D45E58  41 82 08 8C */	beq lbl_80D466E4
/* 80D45E5C  3B E0 00 02 */	li r31, 2
/* 80D45E60  48 00 08 84 */	b lbl_80D466E4
lbl_80D45E64:
/* 80D45E64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D45E68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D45E6C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D45E70  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D45E74  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D45E78  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D45E7C  4B 2E EB 41 */	bl isEventBit__11dSv_event_cCFUs
/* 80D45E80  2C 03 00 00 */	cmpwi r3, 0
/* 80D45E84  41 82 00 58 */	beq lbl_80D45EDC
/* 80D45E88  38 60 00 00 */	li r3, 0
/* 80D45E8C  38 80 00 04 */	li r4, 4
/* 80D45E90  48 00 0D 0D */	bl func_80D46B9C
/* 80D45E94  2C 03 00 02 */	cmpwi r3, 2
/* 80D45E98  41 82 00 34 */	beq lbl_80D45ECC
/* 80D45E9C  40 80 00 14 */	bge lbl_80D45EB0
/* 80D45EA0  2C 03 00 00 */	cmpwi r3, 0
/* 80D45EA4  41 82 00 18 */	beq lbl_80D45EBC
/* 80D45EA8  40 80 00 1C */	bge lbl_80D45EC4
/* 80D45EAC  48 00 08 38 */	b lbl_80D466E4
lbl_80D45EB0:
/* 80D45EB0  2C 03 00 04 */	cmpwi r3, 4
/* 80D45EB4  40 80 08 30 */	bge lbl_80D466E4
/* 80D45EB8  48 00 00 1C */	b lbl_80D45ED4
lbl_80D45EBC:
/* 80D45EBC  3B E0 00 00 */	li r31, 0
/* 80D45EC0  48 00 08 24 */	b lbl_80D466E4
lbl_80D45EC4:
/* 80D45EC4  3B E0 00 01 */	li r31, 1
/* 80D45EC8  48 00 08 1C */	b lbl_80D466E4
lbl_80D45ECC:
/* 80D45ECC  3B E0 00 04 */	li r31, 4
/* 80D45ED0  48 00 08 14 */	b lbl_80D466E4
lbl_80D45ED4:
/* 80D45ED4  3B E0 00 0B */	li r31, 0xb
/* 80D45ED8  48 00 08 0C */	b lbl_80D466E4
lbl_80D45EDC:
/* 80D45EDC  38 60 00 00 */	li r3, 0
/* 80D45EE0  38 80 00 03 */	li r4, 3
/* 80D45EE4  48 00 0C B9 */	bl func_80D46B9C
/* 80D45EE8  2C 03 00 01 */	cmpwi r3, 1
/* 80D45EEC  41 82 00 28 */	beq lbl_80D45F14
/* 80D45EF0  40 80 00 10 */	bge lbl_80D45F00
/* 80D45EF4  2C 03 00 00 */	cmpwi r3, 0
/* 80D45EF8  40 80 00 14 */	bge lbl_80D45F0C
/* 80D45EFC  48 00 07 E8 */	b lbl_80D466E4
lbl_80D45F00:
/* 80D45F00  2C 03 00 03 */	cmpwi r3, 3
/* 80D45F04  40 80 07 E0 */	bge lbl_80D466E4
/* 80D45F08  48 00 00 14 */	b lbl_80D45F1C
lbl_80D45F0C:
/* 80D45F0C  3B E0 00 00 */	li r31, 0
/* 80D45F10  48 00 07 D4 */	b lbl_80D466E4
lbl_80D45F14:
/* 80D45F14  3B E0 00 01 */	li r31, 1
/* 80D45F18  48 00 07 CC */	b lbl_80D466E4
lbl_80D45F1C:
/* 80D45F1C  3B E0 00 04 */	li r31, 4
/* 80D45F20  48 00 07 C4 */	b lbl_80D466E4
lbl_80D45F24:
/* 80D45F24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D45F28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D45F2C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D45F30  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D45F34  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D45F38  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D45F3C  4B 2E EA 81 */	bl isEventBit__11dSv_event_cCFUs
/* 80D45F40  2C 03 00 00 */	cmpwi r3, 0
/* 80D45F44  41 82 00 4C */	beq lbl_80D45F90
/* 80D45F48  38 60 00 00 */	li r3, 0
/* 80D45F4C  38 80 00 03 */	li r4, 3
/* 80D45F50  48 00 0C 4D */	bl func_80D46B9C
/* 80D45F54  2C 03 00 01 */	cmpwi r3, 1
/* 80D45F58  41 82 00 28 */	beq lbl_80D45F80
/* 80D45F5C  40 80 00 10 */	bge lbl_80D45F6C
/* 80D45F60  2C 03 00 00 */	cmpwi r3, 0
/* 80D45F64  40 80 00 14 */	bge lbl_80D45F78
/* 80D45F68  48 00 07 7C */	b lbl_80D466E4
lbl_80D45F6C:
/* 80D45F6C  2C 03 00 03 */	cmpwi r3, 3
/* 80D45F70  40 80 07 74 */	bge lbl_80D466E4
/* 80D45F74  48 00 00 14 */	b lbl_80D45F88
lbl_80D45F78:
/* 80D45F78  3B E0 00 00 */	li r31, 0
/* 80D45F7C  48 00 07 68 */	b lbl_80D466E4
lbl_80D45F80:
/* 80D45F80  3B E0 00 04 */	li r31, 4
/* 80D45F84  48 00 07 60 */	b lbl_80D466E4
lbl_80D45F88:
/* 80D45F88  3B E0 00 0B */	li r31, 0xb
/* 80D45F8C  48 00 07 58 */	b lbl_80D466E4
lbl_80D45F90:
/* 80D45F90  38 60 00 00 */	li r3, 0
/* 80D45F94  38 80 00 02 */	li r4, 2
/* 80D45F98  48 00 0C 05 */	bl func_80D46B9C
/* 80D45F9C  2C 03 00 01 */	cmpwi r3, 1
/* 80D45FA0  41 82 00 1C */	beq lbl_80D45FBC
/* 80D45FA4  40 80 07 40 */	bge lbl_80D466E4
/* 80D45FA8  2C 03 00 00 */	cmpwi r3, 0
/* 80D45FAC  40 80 00 08 */	bge lbl_80D45FB4
/* 80D45FB0  48 00 07 34 */	b lbl_80D466E4
lbl_80D45FB4:
/* 80D45FB4  3B E0 00 00 */	li r31, 0
/* 80D45FB8  48 00 07 2C */	b lbl_80D466E4
lbl_80D45FBC:
/* 80D45FBC  3B E0 00 04 */	li r31, 4
/* 80D45FC0  48 00 07 24 */	b lbl_80D466E4
lbl_80D45FC4:
/* 80D45FC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D45FC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D45FCC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D45FD0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D45FD4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D45FD8  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D45FDC  4B 2E E9 E1 */	bl isEventBit__11dSv_event_cCFUs
/* 80D45FE0  2C 03 00 00 */	cmpwi r3, 0
/* 80D45FE4  41 82 00 58 */	beq lbl_80D4603C
/* 80D45FE8  38 60 00 00 */	li r3, 0
/* 80D45FEC  38 80 00 04 */	li r4, 4
/* 80D45FF0  48 00 0B AD */	bl func_80D46B9C
/* 80D45FF4  2C 03 00 02 */	cmpwi r3, 2
/* 80D45FF8  41 82 00 34 */	beq lbl_80D4602C
/* 80D45FFC  40 80 00 14 */	bge lbl_80D46010
/* 80D46000  2C 03 00 00 */	cmpwi r3, 0
/* 80D46004  41 82 00 18 */	beq lbl_80D4601C
/* 80D46008  40 80 00 1C */	bge lbl_80D46024
/* 80D4600C  48 00 06 D8 */	b lbl_80D466E4
lbl_80D46010:
/* 80D46010  2C 03 00 04 */	cmpwi r3, 4
/* 80D46014  40 80 06 D0 */	bge lbl_80D466E4
/* 80D46018  48 00 00 1C */	b lbl_80D46034
lbl_80D4601C:
/* 80D4601C  3B E0 00 00 */	li r31, 0
/* 80D46020  48 00 06 C4 */	b lbl_80D466E4
lbl_80D46024:
/* 80D46024  3B E0 00 01 */	li r31, 1
/* 80D46028  48 00 06 BC */	b lbl_80D466E4
lbl_80D4602C:
/* 80D4602C  3B E0 00 04 */	li r31, 4
/* 80D46030  48 00 06 B4 */	b lbl_80D466E4
lbl_80D46034:
/* 80D46034  3B E0 00 0B */	li r31, 0xb
/* 80D46038  48 00 06 AC */	b lbl_80D466E4
lbl_80D4603C:
/* 80D4603C  38 60 00 00 */	li r3, 0
/* 80D46040  38 80 00 04 */	li r4, 4
/* 80D46044  48 00 0B 59 */	bl func_80D46B9C
/* 80D46048  2C 03 00 02 */	cmpwi r3, 2
/* 80D4604C  41 82 00 34 */	beq lbl_80D46080
/* 80D46050  40 80 00 14 */	bge lbl_80D46064
/* 80D46054  2C 03 00 00 */	cmpwi r3, 0
/* 80D46058  41 82 00 18 */	beq lbl_80D46070
/* 80D4605C  40 80 00 1C */	bge lbl_80D46078
/* 80D46060  48 00 06 84 */	b lbl_80D466E4
lbl_80D46064:
/* 80D46064  2C 03 00 04 */	cmpwi r3, 4
/* 80D46068  40 80 06 7C */	bge lbl_80D466E4
/* 80D4606C  48 00 00 1C */	b lbl_80D46088
lbl_80D46070:
/* 80D46070  3B E0 00 00 */	li r31, 0
/* 80D46074  48 00 06 70 */	b lbl_80D466E4
lbl_80D46078:
/* 80D46078  3B E0 00 01 */	li r31, 1
/* 80D4607C  48 00 06 68 */	b lbl_80D466E4
lbl_80D46080:
/* 80D46080  3B E0 00 04 */	li r31, 4
/* 80D46084  48 00 06 60 */	b lbl_80D466E4
lbl_80D46088:
/* 80D46088  3B E0 00 09 */	li r31, 9
/* 80D4608C  48 00 06 58 */	b lbl_80D466E4
lbl_80D46090:
/* 80D46090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D46094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D46098  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D4609C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D460A0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D460A4  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D460A8  4B 2E E9 15 */	bl isEventBit__11dSv_event_cCFUs
/* 80D460AC  2C 03 00 00 */	cmpwi r3, 0
/* 80D460B0  41 82 00 4C */	beq lbl_80D460FC
/* 80D460B4  38 60 00 00 */	li r3, 0
/* 80D460B8  38 80 00 03 */	li r4, 3
/* 80D460BC  48 00 0A E1 */	bl func_80D46B9C
/* 80D460C0  2C 03 00 01 */	cmpwi r3, 1
/* 80D460C4  41 82 00 28 */	beq lbl_80D460EC
/* 80D460C8  40 80 00 10 */	bge lbl_80D460D8
/* 80D460CC  2C 03 00 00 */	cmpwi r3, 0
/* 80D460D0  40 80 00 14 */	bge lbl_80D460E4
/* 80D460D4  48 00 06 10 */	b lbl_80D466E4
lbl_80D460D8:
/* 80D460D8  2C 03 00 03 */	cmpwi r3, 3
/* 80D460DC  40 80 06 08 */	bge lbl_80D466E4
/* 80D460E0  48 00 00 14 */	b lbl_80D460F4
lbl_80D460E4:
/* 80D460E4  3B E0 00 00 */	li r31, 0
/* 80D460E8  48 00 05 FC */	b lbl_80D466E4
lbl_80D460EC:
/* 80D460EC  3B E0 00 01 */	li r31, 1
/* 80D460F0  48 00 05 F4 */	b lbl_80D466E4
lbl_80D460F4:
/* 80D460F4  3B E0 00 0B */	li r31, 0xb
/* 80D460F8  48 00 05 EC */	b lbl_80D466E4
lbl_80D460FC:
/* 80D460FC  38 60 00 00 */	li r3, 0
/* 80D46100  38 80 00 02 */	li r4, 2
/* 80D46104  48 00 0A 99 */	bl func_80D46B9C
/* 80D46108  2C 03 00 01 */	cmpwi r3, 1
/* 80D4610C  41 82 00 1C */	beq lbl_80D46128
/* 80D46110  40 80 05 D4 */	bge lbl_80D466E4
/* 80D46114  2C 03 00 00 */	cmpwi r3, 0
/* 80D46118  40 80 00 08 */	bge lbl_80D46120
/* 80D4611C  48 00 05 C8 */	b lbl_80D466E4
lbl_80D46120:
/* 80D46120  3B E0 00 00 */	li r31, 0
/* 80D46124  48 00 05 C0 */	b lbl_80D466E4
lbl_80D46128:
/* 80D46128  3B E0 00 01 */	li r31, 1
/* 80D4612C  48 00 05 B8 */	b lbl_80D466E4
lbl_80D46130:
/* 80D46130  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D46134  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D46138  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D4613C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D46140  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D46144  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D46148  4B 2E E8 75 */	bl isEventBit__11dSv_event_cCFUs
/* 80D4614C  2C 03 00 00 */	cmpwi r3, 0
/* 80D46150  41 82 00 4C */	beq lbl_80D4619C
/* 80D46154  38 60 00 00 */	li r3, 0
/* 80D46158  38 80 00 03 */	li r4, 3
/* 80D4615C  48 00 0A 41 */	bl func_80D46B9C
/* 80D46160  2C 03 00 01 */	cmpwi r3, 1
/* 80D46164  41 82 00 28 */	beq lbl_80D4618C
/* 80D46168  40 80 00 10 */	bge lbl_80D46178
/* 80D4616C  2C 03 00 00 */	cmpwi r3, 0
/* 80D46170  40 80 00 14 */	bge lbl_80D46184
/* 80D46174  48 00 05 70 */	b lbl_80D466E4
lbl_80D46178:
/* 80D46178  2C 03 00 03 */	cmpwi r3, 3
/* 80D4617C  40 80 05 68 */	bge lbl_80D466E4
/* 80D46180  48 00 00 14 */	b lbl_80D46194
lbl_80D46184:
/* 80D46184  3B E0 00 00 */	li r31, 0
/* 80D46188  48 00 05 5C */	b lbl_80D466E4
lbl_80D4618C:
/* 80D4618C  3B E0 00 04 */	li r31, 4
/* 80D46190  48 00 05 54 */	b lbl_80D466E4
lbl_80D46194:
/* 80D46194  3B E0 00 0B */	li r31, 0xb
/* 80D46198  48 00 05 4C */	b lbl_80D466E4
lbl_80D4619C:
/* 80D4619C  38 60 00 00 */	li r3, 0
/* 80D461A0  38 80 00 02 */	li r4, 2
/* 80D461A4  48 00 09 F9 */	bl func_80D46B9C
/* 80D461A8  2C 03 00 01 */	cmpwi r3, 1
/* 80D461AC  41 82 00 1C */	beq lbl_80D461C8
/* 80D461B0  40 80 05 34 */	bge lbl_80D466E4
/* 80D461B4  2C 03 00 00 */	cmpwi r3, 0
/* 80D461B8  40 80 00 08 */	bge lbl_80D461C0
/* 80D461BC  48 00 05 28 */	b lbl_80D466E4
lbl_80D461C0:
/* 80D461C0  3B E0 00 00 */	li r31, 0
/* 80D461C4  48 00 05 20 */	b lbl_80D466E4
lbl_80D461C8:
/* 80D461C8  3B E0 00 04 */	li r31, 4
/* 80D461CC  48 00 05 18 */	b lbl_80D466E4
lbl_80D461D0:
/* 80D461D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D461D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D461D8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D461DC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D461E0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D461E4  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D461E8  4B 2E E7 D5 */	bl isEventBit__11dSv_event_cCFUs
/* 80D461EC  2C 03 00 00 */	cmpwi r3, 0
/* 80D461F0  41 82 00 58 */	beq lbl_80D46248
/* 80D461F4  38 60 00 00 */	li r3, 0
/* 80D461F8  38 80 00 04 */	li r4, 4
/* 80D461FC  48 00 09 A1 */	bl func_80D46B9C
/* 80D46200  2C 03 00 02 */	cmpwi r3, 2
/* 80D46204  41 82 00 34 */	beq lbl_80D46238
/* 80D46208  40 80 00 14 */	bge lbl_80D4621C
/* 80D4620C  2C 03 00 00 */	cmpwi r3, 0
/* 80D46210  41 82 00 18 */	beq lbl_80D46228
/* 80D46214  40 80 00 1C */	bge lbl_80D46230
/* 80D46218  48 00 04 CC */	b lbl_80D466E4
lbl_80D4621C:
/* 80D4621C  2C 03 00 04 */	cmpwi r3, 4
/* 80D46220  40 80 04 C4 */	bge lbl_80D466E4
/* 80D46224  48 00 00 1C */	b lbl_80D46240
lbl_80D46228:
/* 80D46228  3B E0 00 00 */	li r31, 0
/* 80D4622C  48 00 04 B8 */	b lbl_80D466E4
lbl_80D46230:
/* 80D46230  3B E0 00 08 */	li r31, 8
/* 80D46234  48 00 04 B0 */	b lbl_80D466E4
lbl_80D46238:
/* 80D46238  3B E0 00 05 */	li r31, 5
/* 80D4623C  48 00 04 A8 */	b lbl_80D466E4
lbl_80D46240:
/* 80D46240  3B E0 00 0C */	li r31, 0xc
/* 80D46244  48 00 04 A0 */	b lbl_80D466E4
lbl_80D46248:
/* 80D46248  38 60 00 00 */	li r3, 0
/* 80D4624C  38 80 00 04 */	li r4, 4
/* 80D46250  48 00 09 4D */	bl func_80D46B9C
/* 80D46254  2C 03 00 02 */	cmpwi r3, 2
/* 80D46258  41 82 00 34 */	beq lbl_80D4628C
/* 80D4625C  40 80 00 14 */	bge lbl_80D46270
/* 80D46260  2C 03 00 00 */	cmpwi r3, 0
/* 80D46264  41 82 00 18 */	beq lbl_80D4627C
/* 80D46268  40 80 00 1C */	bge lbl_80D46284
/* 80D4626C  48 00 04 78 */	b lbl_80D466E4
lbl_80D46270:
/* 80D46270  2C 03 00 04 */	cmpwi r3, 4
/* 80D46274  40 80 04 70 */	bge lbl_80D466E4
/* 80D46278  48 00 00 1C */	b lbl_80D46294
lbl_80D4627C:
/* 80D4627C  3B E0 00 00 */	li r31, 0
/* 80D46280  48 00 04 64 */	b lbl_80D466E4
lbl_80D46284:
/* 80D46284  3B E0 00 08 */	li r31, 8
/* 80D46288  48 00 04 5C */	b lbl_80D466E4
lbl_80D4628C:
/* 80D4628C  3B E0 00 05 */	li r31, 5
/* 80D46290  48 00 04 54 */	b lbl_80D466E4
lbl_80D46294:
/* 80D46294  3B E0 00 0A */	li r31, 0xa
/* 80D46298  48 00 04 4C */	b lbl_80D466E4
lbl_80D4629C:
/* 80D4629C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D462A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D462A4  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D462A8  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D462AC  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D462B0  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D462B4  4B 2E E7 09 */	bl isEventBit__11dSv_event_cCFUs
/* 80D462B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D462BC  41 82 00 58 */	beq lbl_80D46314
/* 80D462C0  38 60 00 00 */	li r3, 0
/* 80D462C4  38 80 00 04 */	li r4, 4
/* 80D462C8  48 00 08 D5 */	bl func_80D46B9C
/* 80D462CC  2C 03 00 02 */	cmpwi r3, 2
/* 80D462D0  41 82 00 34 */	beq lbl_80D46304
/* 80D462D4  40 80 00 14 */	bge lbl_80D462E8
/* 80D462D8  2C 03 00 00 */	cmpwi r3, 0
/* 80D462DC  41 82 00 18 */	beq lbl_80D462F4
/* 80D462E0  40 80 00 1C */	bge lbl_80D462FC
/* 80D462E4  48 00 04 00 */	b lbl_80D466E4
lbl_80D462E8:
/* 80D462E8  2C 03 00 04 */	cmpwi r3, 4
/* 80D462EC  40 80 03 F8 */	bge lbl_80D466E4
/* 80D462F0  48 00 00 1C */	b lbl_80D4630C
lbl_80D462F4:
/* 80D462F4  3B E0 00 00 */	li r31, 0
/* 80D462F8  48 00 03 EC */	b lbl_80D466E4
lbl_80D462FC:
/* 80D462FC  3B E0 00 08 */	li r31, 8
/* 80D46300  48 00 03 E4 */	b lbl_80D466E4
lbl_80D46304:
/* 80D46304  3B E0 00 05 */	li r31, 5
/* 80D46308  48 00 03 DC */	b lbl_80D466E4
lbl_80D4630C:
/* 80D4630C  3B E0 00 0C */	li r31, 0xc
/* 80D46310  48 00 03 D4 */	b lbl_80D466E4
lbl_80D46314:
/* 80D46314  38 60 00 00 */	li r3, 0
/* 80D46318  38 80 00 03 */	li r4, 3
/* 80D4631C  48 00 08 81 */	bl func_80D46B9C
/* 80D46320  2C 03 00 01 */	cmpwi r3, 1
/* 80D46324  41 82 00 28 */	beq lbl_80D4634C
/* 80D46328  40 80 00 10 */	bge lbl_80D46338
/* 80D4632C  2C 03 00 00 */	cmpwi r3, 0
/* 80D46330  40 80 00 14 */	bge lbl_80D46344
/* 80D46334  48 00 03 B0 */	b lbl_80D466E4
lbl_80D46338:
/* 80D46338  2C 03 00 03 */	cmpwi r3, 3
/* 80D4633C  40 80 03 A8 */	bge lbl_80D466E4
/* 80D46340  48 00 00 14 */	b lbl_80D46354
lbl_80D46344:
/* 80D46344  3B E0 00 00 */	li r31, 0
/* 80D46348  48 00 03 9C */	b lbl_80D466E4
lbl_80D4634C:
/* 80D4634C  3B E0 00 08 */	li r31, 8
/* 80D46350  48 00 03 94 */	b lbl_80D466E4
lbl_80D46354:
/* 80D46354  3B E0 00 05 */	li r31, 5
/* 80D46358  48 00 03 8C */	b lbl_80D466E4
lbl_80D4635C:
/* 80D4635C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D46360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D46364  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D46368  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D4636C  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D46370  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D46374  4B 2E E6 49 */	bl isEventBit__11dSv_event_cCFUs
/* 80D46378  2C 03 00 00 */	cmpwi r3, 0
/* 80D4637C  41 82 00 64 */	beq lbl_80D463E0
/* 80D46380  38 60 00 00 */	li r3, 0
/* 80D46384  38 80 00 05 */	li r4, 5
/* 80D46388  48 00 08 15 */	bl func_80D46B9C
/* 80D4638C  2C 03 00 02 */	cmpwi r3, 2
/* 80D46390  41 82 00 38 */	beq lbl_80D463C8
/* 80D46394  40 80 00 14 */	bge lbl_80D463A8
/* 80D46398  2C 03 00 00 */	cmpwi r3, 0
/* 80D4639C  41 82 00 1C */	beq lbl_80D463B8
/* 80D463A0  40 80 00 20 */	bge lbl_80D463C0
/* 80D463A4  48 00 03 40 */	b lbl_80D466E4
lbl_80D463A8:
/* 80D463A8  2C 03 00 04 */	cmpwi r3, 4
/* 80D463AC  41 82 00 2C */	beq lbl_80D463D8
/* 80D463B0  40 80 03 34 */	bge lbl_80D466E4
/* 80D463B4  48 00 00 1C */	b lbl_80D463D0
lbl_80D463B8:
/* 80D463B8  3B E0 00 00 */	li r31, 0
/* 80D463BC  48 00 03 28 */	b lbl_80D466E4
lbl_80D463C0:
/* 80D463C0  3B E0 00 08 */	li r31, 8
/* 80D463C4  48 00 03 20 */	b lbl_80D466E4
lbl_80D463C8:
/* 80D463C8  3B E0 00 05 */	li r31, 5
/* 80D463CC  48 00 03 18 */	b lbl_80D466E4
lbl_80D463D0:
/* 80D463D0  3B E0 00 03 */	li r31, 3
/* 80D463D4  48 00 03 10 */	b lbl_80D466E4
lbl_80D463D8:
/* 80D463D8  3B E0 00 0C */	li r31, 0xc
/* 80D463DC  48 00 03 08 */	b lbl_80D466E4
lbl_80D463E0:
/* 80D463E0  38 60 00 00 */	li r3, 0
/* 80D463E4  38 80 00 04 */	li r4, 4
/* 80D463E8  48 00 07 B5 */	bl func_80D46B9C
/* 80D463EC  2C 03 00 02 */	cmpwi r3, 2
/* 80D463F0  41 82 00 34 */	beq lbl_80D46424
/* 80D463F4  40 80 00 14 */	bge lbl_80D46408
/* 80D463F8  2C 03 00 00 */	cmpwi r3, 0
/* 80D463FC  41 82 00 18 */	beq lbl_80D46414
/* 80D46400  40 80 00 1C */	bge lbl_80D4641C
/* 80D46404  48 00 02 E0 */	b lbl_80D466E4
lbl_80D46408:
/* 80D46408  2C 03 00 04 */	cmpwi r3, 4
/* 80D4640C  40 80 02 D8 */	bge lbl_80D466E4
/* 80D46410  48 00 00 1C */	b lbl_80D4642C
lbl_80D46414:
/* 80D46414  3B E0 00 00 */	li r31, 0
/* 80D46418  48 00 02 CC */	b lbl_80D466E4
lbl_80D4641C:
/* 80D4641C  3B E0 00 08 */	li r31, 8
/* 80D46420  48 00 02 C4 */	b lbl_80D466E4
lbl_80D46424:
/* 80D46424  3B E0 00 05 */	li r31, 5
/* 80D46428  48 00 02 BC */	b lbl_80D466E4
lbl_80D4642C:
/* 80D4642C  3B E0 00 03 */	li r31, 3
/* 80D46430  48 00 02 B4 */	b lbl_80D466E4
lbl_80D46434:
/* 80D46434  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D46438  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4643C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D46440  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D46444  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D46448  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D4644C  4B 2E E5 71 */	bl isEventBit__11dSv_event_cCFUs
/* 80D46450  2C 03 00 00 */	cmpwi r3, 0
/* 80D46454  41 82 00 4C */	beq lbl_80D464A0
/* 80D46458  38 60 00 00 */	li r3, 0
/* 80D4645C  38 80 00 03 */	li r4, 3
/* 80D46460  48 00 07 3D */	bl func_80D46B9C
/* 80D46464  2C 03 00 01 */	cmpwi r3, 1
/* 80D46468  41 82 00 28 */	beq lbl_80D46490
/* 80D4646C  40 80 00 10 */	bge lbl_80D4647C
/* 80D46470  2C 03 00 00 */	cmpwi r3, 0
/* 80D46474  40 80 00 14 */	bge lbl_80D46488
/* 80D46478  48 00 02 6C */	b lbl_80D466E4
lbl_80D4647C:
/* 80D4647C  2C 03 00 03 */	cmpwi r3, 3
/* 80D46480  40 80 02 64 */	bge lbl_80D466E4
/* 80D46484  48 00 00 14 */	b lbl_80D46498
lbl_80D46488:
/* 80D46488  3B E0 00 00 */	li r31, 0
/* 80D4648C  48 00 02 58 */	b lbl_80D466E4
lbl_80D46490:
/* 80D46490  3B E0 00 05 */	li r31, 5
/* 80D46494  48 00 02 50 */	b lbl_80D466E4
lbl_80D46498:
/* 80D46498  3B E0 00 0C */	li r31, 0xc
/* 80D4649C  48 00 02 48 */	b lbl_80D466E4
lbl_80D464A0:
/* 80D464A0  38 60 00 00 */	li r3, 0
/* 80D464A4  38 80 00 02 */	li r4, 2
/* 80D464A8  48 00 06 F5 */	bl func_80D46B9C
/* 80D464AC  2C 03 00 01 */	cmpwi r3, 1
/* 80D464B0  41 82 00 1C */	beq lbl_80D464CC
/* 80D464B4  40 80 02 30 */	bge lbl_80D466E4
/* 80D464B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D464BC  40 80 00 08 */	bge lbl_80D464C4
/* 80D464C0  48 00 02 24 */	b lbl_80D466E4
lbl_80D464C4:
/* 80D464C4  3B E0 00 00 */	li r31, 0
/* 80D464C8  48 00 02 1C */	b lbl_80D466E4
lbl_80D464CC:
/* 80D464CC  3B E0 00 05 */	li r31, 5
/* 80D464D0  48 00 02 14 */	b lbl_80D466E4
lbl_80D464D4:
/* 80D464D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D464D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D464DC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D464E0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D464E4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D464E8  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D464EC  4B 2E E4 D1 */	bl isEventBit__11dSv_event_cCFUs
/* 80D464F0  2C 03 00 00 */	cmpwi r3, 0
/* 80D464F4  41 82 00 4C */	beq lbl_80D46540
/* 80D464F8  38 60 00 00 */	li r3, 0
/* 80D464FC  38 80 00 03 */	li r4, 3
/* 80D46500  48 00 06 9D */	bl func_80D46B9C
/* 80D46504  2C 03 00 01 */	cmpwi r3, 1
/* 80D46508  41 82 00 28 */	beq lbl_80D46530
/* 80D4650C  40 80 00 10 */	bge lbl_80D4651C
/* 80D46510  2C 03 00 00 */	cmpwi r3, 0
/* 80D46514  40 80 00 14 */	bge lbl_80D46528
/* 80D46518  48 00 01 CC */	b lbl_80D466E4
lbl_80D4651C:
/* 80D4651C  2C 03 00 03 */	cmpwi r3, 3
/* 80D46520  40 80 01 C4 */	bge lbl_80D466E4
/* 80D46524  48 00 00 14 */	b lbl_80D46538
lbl_80D46528:
/* 80D46528  3B E0 00 00 */	li r31, 0
/* 80D4652C  48 00 01 B8 */	b lbl_80D466E4
lbl_80D46530:
/* 80D46530  3B E0 00 05 */	li r31, 5
/* 80D46534  48 00 01 B0 */	b lbl_80D466E4
lbl_80D46538:
/* 80D46538  3B E0 00 0C */	li r31, 0xc
/* 80D4653C  48 00 01 A8 */	b lbl_80D466E4
lbl_80D46540:
/* 80D46540  38 60 00 00 */	li r3, 0
/* 80D46544  38 80 00 02 */	li r4, 2
/* 80D46548  48 00 06 55 */	bl func_80D46B9C
/* 80D4654C  2C 03 00 01 */	cmpwi r3, 1
/* 80D46550  41 82 00 1C */	beq lbl_80D4656C
/* 80D46554  40 80 01 90 */	bge lbl_80D466E4
/* 80D46558  2C 03 00 00 */	cmpwi r3, 0
/* 80D4655C  40 80 00 08 */	bge lbl_80D46564
/* 80D46560  48 00 01 84 */	b lbl_80D466E4
lbl_80D46564:
/* 80D46564  3B E0 00 00 */	li r31, 0
/* 80D46568  48 00 01 7C */	b lbl_80D466E4
lbl_80D4656C:
/* 80D4656C  3B E0 00 05 */	li r31, 5
/* 80D46570  48 00 01 74 */	b lbl_80D466E4
lbl_80D46574:
/* 80D46574  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D46578  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D4657C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D46580  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D46584  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D46588  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D4658C  4B 2E E4 31 */	bl isEventBit__11dSv_event_cCFUs
/* 80D46590  2C 03 00 00 */	cmpwi r3, 0
/* 80D46594  41 82 00 4C */	beq lbl_80D465E0
/* 80D46598  38 60 00 00 */	li r3, 0
/* 80D4659C  38 80 00 03 */	li r4, 3
/* 80D465A0  48 00 05 FD */	bl func_80D46B9C
/* 80D465A4  2C 03 00 01 */	cmpwi r3, 1
/* 80D465A8  41 82 00 28 */	beq lbl_80D465D0
/* 80D465AC  40 80 00 10 */	bge lbl_80D465BC
/* 80D465B0  2C 03 00 00 */	cmpwi r3, 0
/* 80D465B4  40 80 00 14 */	bge lbl_80D465C8
/* 80D465B8  48 00 01 2C */	b lbl_80D466E4
lbl_80D465BC:
/* 80D465BC  2C 03 00 03 */	cmpwi r3, 3
/* 80D465C0  40 80 01 24 */	bge lbl_80D466E4
/* 80D465C4  48 00 00 14 */	b lbl_80D465D8
lbl_80D465C8:
/* 80D465C8  3B E0 00 00 */	li r31, 0
/* 80D465CC  48 00 01 18 */	b lbl_80D466E4
lbl_80D465D0:
/* 80D465D0  3B E0 00 05 */	li r31, 5
/* 80D465D4  48 00 01 10 */	b lbl_80D466E4
lbl_80D465D8:
/* 80D465D8  3B E0 00 0C */	li r31, 0xc
/* 80D465DC  48 00 01 08 */	b lbl_80D466E4
lbl_80D465E0:
/* 80D465E0  38 60 00 00 */	li r3, 0
/* 80D465E4  38 80 00 03 */	li r4, 3
/* 80D465E8  48 00 05 B5 */	bl func_80D46B9C
/* 80D465EC  2C 03 00 01 */	cmpwi r3, 1
/* 80D465F0  41 82 00 28 */	beq lbl_80D46618
/* 80D465F4  40 80 00 10 */	bge lbl_80D46604
/* 80D465F8  2C 03 00 00 */	cmpwi r3, 0
/* 80D465FC  40 80 00 14 */	bge lbl_80D46610
/* 80D46600  48 00 00 E4 */	b lbl_80D466E4
lbl_80D46604:
/* 80D46604  2C 03 00 03 */	cmpwi r3, 3
/* 80D46608  40 80 00 DC */	bge lbl_80D466E4
/* 80D4660C  48 00 00 14 */	b lbl_80D46620
lbl_80D46610:
/* 80D46610  3B E0 00 00 */	li r31, 0
/* 80D46614  48 00 00 D0 */	b lbl_80D466E4
lbl_80D46618:
/* 80D46618  3B E0 00 05 */	li r31, 5
/* 80D4661C  48 00 00 C8 */	b lbl_80D466E4
lbl_80D46620:
/* 80D46620  3B E0 00 0A */	li r31, 0xa
/* 80D46624  48 00 00 C0 */	b lbl_80D466E4
lbl_80D46628:
/* 80D46628  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D4662C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D46630  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80D46634  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80D46638  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80D4663C  A0 84 02 32 */	lhz r4, 0x232(r4)
/* 80D46640  4B 2E E3 7D */	bl isEventBit__11dSv_event_cCFUs
/* 80D46644  2C 03 00 00 */	cmpwi r3, 0
/* 80D46648  41 82 00 58 */	beq lbl_80D466A0
/* 80D4664C  38 60 00 00 */	li r3, 0
/* 80D46650  38 80 00 04 */	li r4, 4
/* 80D46654  48 00 05 49 */	bl func_80D46B9C
/* 80D46658  2C 03 00 02 */	cmpwi r3, 2
/* 80D4665C  41 82 00 34 */	beq lbl_80D46690
/* 80D46660  40 80 00 14 */	bge lbl_80D46674
/* 80D46664  2C 03 00 00 */	cmpwi r3, 0
/* 80D46668  41 82 00 18 */	beq lbl_80D46680
/* 80D4666C  40 80 00 1C */	bge lbl_80D46688
/* 80D46670  48 00 00 74 */	b lbl_80D466E4
lbl_80D46674:
/* 80D46674  2C 03 00 04 */	cmpwi r3, 4
/* 80D46678  40 80 00 6C */	bge lbl_80D466E4
/* 80D4667C  48 00 00 1C */	b lbl_80D46698
lbl_80D46680:
/* 80D46680  3B E0 00 00 */	li r31, 0
/* 80D46684  48 00 00 60 */	b lbl_80D466E4
lbl_80D46688:
/* 80D46688  3B E0 00 05 */	li r31, 5
/* 80D4668C  48 00 00 58 */	b lbl_80D466E4
lbl_80D46690:
/* 80D46690  3B E0 00 03 */	li r31, 3
/* 80D46694  48 00 00 50 */	b lbl_80D466E4
lbl_80D46698:
/* 80D46698  3B E0 00 0C */	li r31, 0xc
/* 80D4669C  48 00 00 48 */	b lbl_80D466E4
lbl_80D466A0:
/* 80D466A0  38 60 00 00 */	li r3, 0
/* 80D466A4  38 80 00 03 */	li r4, 3
/* 80D466A8  48 00 04 F5 */	bl func_80D46B9C
/* 80D466AC  2C 03 00 01 */	cmpwi r3, 1
/* 80D466B0  41 82 00 28 */	beq lbl_80D466D8
/* 80D466B4  40 80 00 10 */	bge lbl_80D466C4
/* 80D466B8  2C 03 00 00 */	cmpwi r3, 0
/* 80D466BC  40 80 00 14 */	bge lbl_80D466D0
/* 80D466C0  48 00 00 24 */	b lbl_80D466E4
lbl_80D466C4:
/* 80D466C4  2C 03 00 03 */	cmpwi r3, 3
/* 80D466C8  40 80 00 1C */	bge lbl_80D466E4
/* 80D466CC  48 00 00 14 */	b lbl_80D466E0
lbl_80D466D0:
/* 80D466D0  3B E0 00 00 */	li r31, 0
/* 80D466D4  48 00 00 10 */	b lbl_80D466E4
lbl_80D466D8:
/* 80D466D8  3B E0 00 05 */	li r31, 5
/* 80D466DC  48 00 00 08 */	b lbl_80D466E4
lbl_80D466E0:
/* 80D466E0  3B E0 00 03 */	li r31, 3
lbl_80D466E4:
/* 80D466E4  57 E3 40 2E */	slwi r3, r31, 8
/* 80D466E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D466EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D466F0  7C 08 03 A6 */	mtlr r0
/* 80D466F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D466F8  4E 80 00 20 */	blr 

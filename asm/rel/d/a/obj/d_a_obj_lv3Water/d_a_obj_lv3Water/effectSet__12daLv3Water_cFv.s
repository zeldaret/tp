lbl_80C58E20:
/* 80C58E20  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C58E24  7C 08 02 A6 */	mflr r0
/* 80C58E28  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C58E2C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C58E30  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C58E34  7C 7F 1B 78 */	mr r31, r3
/* 80C58E38  88 03 05 F9 */	lbz r0, 0x5f9(r3)
/* 80C58E3C  28 00 00 11 */	cmplwi r0, 0x11
/* 80C58E40  41 81 08 9C */	bgt lbl_80C596DC
/* 80C58E44  3C 60 80 C6 */	lis r3, lit_4043@ha /* 0x80C5A1E0@ha */
/* 80C58E48  38 63 A1 E0 */	addi r3, r3, lit_4043@l /* 0x80C5A1E0@l */
/* 80C58E4C  54 00 10 3A */	slwi r0, r0, 2
/* 80C58E50  7C 03 00 2E */	lwzx r0, r3, r0
/* 80C58E54  7C 09 03 A6 */	mtctr r0
/* 80C58E58  4E 80 04 20 */	bctr 
lbl_80C58E5C:
/* 80C58E5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C58E60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C58E64  38 80 00 08 */	li r4, 8
/* 80C58E68  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C58E6C  7C 05 07 74 */	extsb r5, r0
/* 80C58E70  4B 3D C4 F1 */	bl isSwitch__10dSv_info_cCFii
/* 80C58E74  2C 03 00 00 */	cmpwi r3, 0
/* 80C58E78  41 82 08 64 */	beq lbl_80C596DC
/* 80C58E7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C58E80  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C58E84  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C58E88  38 00 00 FF */	li r0, 0xff
/* 80C58E8C  90 01 00 08 */	stw r0, 8(r1)
/* 80C58E90  38 80 00 00 */	li r4, 0
/* 80C58E94  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C58E98  38 00 FF FF */	li r0, -1
/* 80C58E9C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C58EA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C58EA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C58EA8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C58EAC  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C58EB0  38 A0 00 00 */	li r5, 0
/* 80C58EB4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AB2@ha */
/* 80C58EB8  38 C6 8A B2 */	addi r6, r6, 0x8AB2 /* 0x00008AB2@l */
/* 80C58EBC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C58EC0  39 00 00 00 */	li r8, 0
/* 80C58EC4  39 20 00 00 */	li r9, 0
/* 80C58EC8  39 40 00 00 */	li r10, 0
/* 80C58ECC  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C58ED0  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C58ED4  4B 3F 45 F9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C58ED8  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C58EDC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C58EE0  38 00 00 FF */	li r0, 0xff
/* 80C58EE4  90 01 00 08 */	stw r0, 8(r1)
/* 80C58EE8  38 80 00 00 */	li r4, 0
/* 80C58EEC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C58EF0  38 00 FF FF */	li r0, -1
/* 80C58EF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C58EF8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C58EFC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C58F00  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C58F04  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80C58F08  38 A0 00 00 */	li r5, 0
/* 80C58F0C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AB3@ha */
/* 80C58F10  38 C6 8A B3 */	addi r6, r6, 0x8AB3 /* 0x00008AB3@l */
/* 80C58F14  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C58F18  39 00 00 00 */	li r8, 0
/* 80C58F1C  39 20 00 00 */	li r9, 0
/* 80C58F20  39 40 00 00 */	li r10, 0
/* 80C58F24  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C58F28  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C58F2C  4B 3F 45 A1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C58F30  90 7F 06 0C */	stw r3, 0x60c(r31)
/* 80C58F34  48 00 07 A8 */	b lbl_80C596DC
lbl_80C58F38:
/* 80C58F38  88 1F 06 02 */	lbz r0, 0x602(r31)
/* 80C58F3C  28 00 00 00 */	cmplwi r0, 0
/* 80C58F40  41 82 07 9C */	beq lbl_80C596DC
/* 80C58F44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C58F48  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C58F4C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C58F50  38 00 00 FF */	li r0, 0xff
/* 80C58F54  90 01 00 08 */	stw r0, 8(r1)
/* 80C58F58  38 80 00 00 */	li r4, 0
/* 80C58F5C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C58F60  38 00 FF FF */	li r0, -1
/* 80C58F64  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C58F68  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C58F6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C58F70  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C58F74  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C58F78  38 A0 00 00 */	li r5, 0
/* 80C58F7C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AB4@ha */
/* 80C58F80  38 C6 8A B4 */	addi r6, r6, 0x8AB4 /* 0x00008AB4@l */
/* 80C58F84  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C58F88  39 00 00 00 */	li r8, 0
/* 80C58F8C  39 20 00 00 */	li r9, 0
/* 80C58F90  39 40 00 00 */	li r10, 0
/* 80C58F94  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C58F98  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C58F9C  4B 3F 45 31 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C58FA0  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C58FA4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C58FA8  38 00 00 FF */	li r0, 0xff
/* 80C58FAC  90 01 00 08 */	stw r0, 8(r1)
/* 80C58FB0  38 80 00 00 */	li r4, 0
/* 80C58FB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C58FB8  38 00 FF FF */	li r0, -1
/* 80C58FBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C58FC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C58FC4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C58FC8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C58FCC  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80C58FD0  38 A0 00 00 */	li r5, 0
/* 80C58FD4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AB5@ha */
/* 80C58FD8  38 C6 8A B5 */	addi r6, r6, 0x8AB5 /* 0x00008AB5@l */
/* 80C58FDC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C58FE0  39 00 00 00 */	li r8, 0
/* 80C58FE4  39 20 00 00 */	li r9, 0
/* 80C58FE8  39 40 00 00 */	li r10, 0
/* 80C58FEC  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C58FF0  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C58FF4  4B 3F 44 D9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C58FF8  90 7F 06 0C */	stw r3, 0x60c(r31)
/* 80C58FFC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C59000  38 00 00 FF */	li r0, 0xff
/* 80C59004  90 01 00 08 */	stw r0, 8(r1)
/* 80C59008  38 80 00 00 */	li r4, 0
/* 80C5900C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C59010  38 00 FF FF */	li r0, -1
/* 80C59014  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C59018  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5901C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59020  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C59024  80 9F 06 10 */	lwz r4, 0x610(r31)
/* 80C59028  38 A0 00 00 */	li r5, 0
/* 80C5902C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AB6@ha */
/* 80C59030  38 C6 8A B6 */	addi r6, r6, 0x8AB6 /* 0x00008AB6@l */
/* 80C59034  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59038  39 00 00 00 */	li r8, 0
/* 80C5903C  39 20 00 00 */	li r9, 0
/* 80C59040  39 40 00 00 */	li r10, 0
/* 80C59044  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59048  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C5904C  4B 3F 44 81 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59050  90 7F 06 10 */	stw r3, 0x610(r31)
/* 80C59054  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C59058  38 00 00 FF */	li r0, 0xff
/* 80C5905C  90 01 00 08 */	stw r0, 8(r1)
/* 80C59060  38 80 00 00 */	li r4, 0
/* 80C59064  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C59068  38 00 FF FF */	li r0, -1
/* 80C5906C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C59070  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C59074  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59078  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5907C  80 9F 06 14 */	lwz r4, 0x614(r31)
/* 80C59080  38 A0 00 00 */	li r5, 0
/* 80C59084  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AB7@ha */
/* 80C59088  38 C6 8A B7 */	addi r6, r6, 0x8AB7 /* 0x00008AB7@l */
/* 80C5908C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59090  39 00 00 00 */	li r8, 0
/* 80C59094  39 20 00 00 */	li r9, 0
/* 80C59098  39 40 00 00 */	li r10, 0
/* 80C5909C  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C590A0  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C590A4  4B 3F 44 29 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C590A8  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80C590AC  48 00 06 30 */	b lbl_80C596DC
lbl_80C590B0:
/* 80C590B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C590B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C590B8  38 80 00 08 */	li r4, 8
/* 80C590BC  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C590C0  7C 05 07 74 */	extsb r5, r0
/* 80C590C4  4B 3D C2 9D */	bl isSwitch__10dSv_info_cCFii
/* 80C590C8  2C 03 00 00 */	cmpwi r3, 0
/* 80C590CC  41 82 06 10 */	beq lbl_80C596DC
/* 80C590D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C590D4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C590D8  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C590DC  38 00 00 FF */	li r0, 0xff
/* 80C590E0  90 01 00 08 */	stw r0, 8(r1)
/* 80C590E4  38 80 00 00 */	li r4, 0
/* 80C590E8  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C590EC  38 00 FF FF */	li r0, -1
/* 80C590F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C590F4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C590F8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C590FC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C59100  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C59104  38 A0 00 00 */	li r5, 0
/* 80C59108  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AB9@ha */
/* 80C5910C  38 C6 8A B9 */	addi r6, r6, 0x8AB9 /* 0x00008AB9@l */
/* 80C59110  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59114  39 00 00 00 */	li r8, 0
/* 80C59118  39 20 00 00 */	li r9, 0
/* 80C5911C  39 40 00 00 */	li r10, 0
/* 80C59120  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59124  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C59128  4B 3F 43 A5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5912C  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C59130  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C59134  38 00 00 FF */	li r0, 0xff
/* 80C59138  90 01 00 08 */	stw r0, 8(r1)
/* 80C5913C  38 80 00 00 */	li r4, 0
/* 80C59140  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C59144  38 00 FF FF */	li r0, -1
/* 80C59148  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C5914C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C59150  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59154  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C59158  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80C5915C  38 A0 00 00 */	li r5, 0
/* 80C59160  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008ABA@ha */
/* 80C59164  38 C6 8A BA */	addi r6, r6, 0x8ABA /* 0x00008ABA@l */
/* 80C59168  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5916C  39 00 00 00 */	li r8, 0
/* 80C59170  39 20 00 00 */	li r9, 0
/* 80C59174  39 40 00 00 */	li r10, 0
/* 80C59178  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C5917C  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C59180  4B 3F 43 4D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59184  90 7F 06 0C */	stw r3, 0x60c(r31)
/* 80C59188  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C5918C  38 00 00 FF */	li r0, 0xff
/* 80C59190  90 01 00 08 */	stw r0, 8(r1)
/* 80C59194  38 80 00 00 */	li r4, 0
/* 80C59198  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5919C  38 00 FF FF */	li r0, -1
/* 80C591A0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C591A4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C591A8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C591AC  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C591B0  80 9F 06 10 */	lwz r4, 0x610(r31)
/* 80C591B4  38 A0 00 00 */	li r5, 0
/* 80C591B8  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008ABB@ha */
/* 80C591BC  38 C6 8A BB */	addi r6, r6, 0x8ABB /* 0x00008ABB@l */
/* 80C591C0  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C591C4  39 00 00 00 */	li r8, 0
/* 80C591C8  39 20 00 00 */	li r9, 0
/* 80C591CC  39 40 00 00 */	li r10, 0
/* 80C591D0  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C591D4  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C591D8  4B 3F 42 F5 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C591DC  90 7F 06 10 */	stw r3, 0x610(r31)
/* 80C591E0  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C591E4  38 00 00 FF */	li r0, 0xff
/* 80C591E8  90 01 00 08 */	stw r0, 8(r1)
/* 80C591EC  38 80 00 00 */	li r4, 0
/* 80C591F0  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C591F4  38 00 FF FF */	li r0, -1
/* 80C591F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C591FC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C59200  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59204  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C59208  80 9F 06 14 */	lwz r4, 0x614(r31)
/* 80C5920C  38 A0 00 00 */	li r5, 0
/* 80C59210  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008ABC@ha */
/* 80C59214  38 C6 8A BC */	addi r6, r6, 0x8ABC /* 0x00008ABC@l */
/* 80C59218  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C5921C  39 00 00 00 */	li r8, 0
/* 80C59220  39 20 00 00 */	li r9, 0
/* 80C59224  39 40 00 00 */	li r10, 0
/* 80C59228  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C5922C  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C59230  4B 3F 42 9D */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59234  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80C59238  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C5923C  38 00 00 FF */	li r0, 0xff
/* 80C59240  90 01 00 08 */	stw r0, 8(r1)
/* 80C59244  38 80 00 00 */	li r4, 0
/* 80C59248  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C5924C  38 00 FF FF */	li r0, -1
/* 80C59250  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C59254  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C59258  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C5925C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C59260  80 9F 06 18 */	lwz r4, 0x618(r31)
/* 80C59264  38 A0 00 00 */	li r5, 0
/* 80C59268  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AB8@ha */
/* 80C5926C  38 C6 8A B8 */	addi r6, r6, 0x8AB8 /* 0x00008AB8@l */
/* 80C59270  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59274  39 00 00 00 */	li r8, 0
/* 80C59278  39 20 00 00 */	li r9, 0
/* 80C5927C  39 40 00 00 */	li r10, 0
/* 80C59280  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59284  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C59288  4B 3F 42 45 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C5928C  90 7F 06 18 */	stw r3, 0x618(r31)
/* 80C59290  48 00 04 4C */	b lbl_80C596DC
lbl_80C59294:
/* 80C59294  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C59298  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C5929C  38 80 00 09 */	li r4, 9
/* 80C592A0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C592A4  7C 05 07 74 */	extsb r5, r0
/* 80C592A8  4B 3D C0 B9 */	bl isSwitch__10dSv_info_cCFii
/* 80C592AC  2C 03 00 00 */	cmpwi r3, 0
/* 80C592B0  41 82 04 2C */	beq lbl_80C596DC
/* 80C592B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C592B8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C592BC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C592C0  38 00 00 FF */	li r0, 0xff
/* 80C592C4  90 01 00 08 */	stw r0, 8(r1)
/* 80C592C8  38 80 00 00 */	li r4, 0
/* 80C592CC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C592D0  38 00 FF FF */	li r0, -1
/* 80C592D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C592D8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C592DC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C592E0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C592E4  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C592E8  38 A0 00 00 */	li r5, 0
/* 80C592EC  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008ABF@ha */
/* 80C592F0  38 C6 8A BF */	addi r6, r6, 0x8ABF /* 0x00008ABF@l */
/* 80C592F4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C592F8  39 00 00 00 */	li r8, 0
/* 80C592FC  39 20 00 00 */	li r9, 0
/* 80C59300  39 40 00 00 */	li r10, 0
/* 80C59304  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59308  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C5930C  4B 3F 41 C1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59310  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C59314  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C59318  38 00 00 FF */	li r0, 0xff
/* 80C5931C  90 01 00 08 */	stw r0, 8(r1)
/* 80C59320  38 80 00 00 */	li r4, 0
/* 80C59324  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C59328  38 00 FF FF */	li r0, -1
/* 80C5932C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C59330  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C59334  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59338  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5933C  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80C59340  38 A0 00 00 */	li r5, 0
/* 80C59344  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC0@ha */
/* 80C59348  38 C6 8A C0 */	addi r6, r6, 0x8AC0 /* 0x00008AC0@l */
/* 80C5934C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59350  39 00 00 00 */	li r8, 0
/* 80C59354  39 20 00 00 */	li r9, 0
/* 80C59358  39 40 00 00 */	li r10, 0
/* 80C5935C  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59360  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C59364  4B 3F 41 69 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59368  90 7F 06 0C */	stw r3, 0x60c(r31)
/* 80C5936C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C59370  38 00 00 FF */	li r0, 0xff
/* 80C59374  90 01 00 08 */	stw r0, 8(r1)
/* 80C59378  38 80 00 00 */	li r4, 0
/* 80C5937C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C59380  38 00 FF FF */	li r0, -1
/* 80C59384  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C59388  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5938C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59390  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C59394  80 9F 06 10 */	lwz r4, 0x610(r31)
/* 80C59398  38 A0 00 00 */	li r5, 0
/* 80C5939C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC1@ha */
/* 80C593A0  38 C6 8A C1 */	addi r6, r6, 0x8AC1 /* 0x00008AC1@l */
/* 80C593A4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C593A8  39 00 00 00 */	li r8, 0
/* 80C593AC  39 20 00 00 */	li r9, 0
/* 80C593B0  39 40 00 00 */	li r10, 0
/* 80C593B4  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C593B8  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C593BC  4B 3F 41 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C593C0  90 7F 06 10 */	stw r3, 0x610(r31)
/* 80C593C4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C593C8  38 00 00 FF */	li r0, 0xff
/* 80C593CC  90 01 00 08 */	stw r0, 8(r1)
/* 80C593D0  38 80 00 00 */	li r4, 0
/* 80C593D4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C593D8  38 00 FF FF */	li r0, -1
/* 80C593DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C593E0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C593E4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C593E8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C593EC  80 9F 06 14 */	lwz r4, 0x614(r31)
/* 80C593F0  38 A0 00 00 */	li r5, 0
/* 80C593F4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC2@ha */
/* 80C593F8  38 C6 8A C2 */	addi r6, r6, 0x8AC2 /* 0x00008AC2@l */
/* 80C593FC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59400  39 00 00 00 */	li r8, 0
/* 80C59404  39 20 00 00 */	li r9, 0
/* 80C59408  39 40 00 00 */	li r10, 0
/* 80C5940C  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59410  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C59414  4B 3F 40 B9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59418  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80C5941C  48 00 02 C0 */	b lbl_80C596DC
lbl_80C59420:
/* 80C59420  88 1F 06 02 */	lbz r0, 0x602(r31)
/* 80C59424  28 00 00 00 */	cmplwi r0, 0
/* 80C59428  41 82 02 B4 */	beq lbl_80C596DC
/* 80C5942C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C59430  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C59434  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C59438  38 00 00 FF */	li r0, 0xff
/* 80C5943C  90 01 00 08 */	stw r0, 8(r1)
/* 80C59440  38 80 00 00 */	li r4, 0
/* 80C59444  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C59448  38 00 FF FF */	li r0, -1
/* 80C5944C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C59450  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C59454  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59458  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5945C  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C59460  38 A0 00 00 */	li r5, 0
/* 80C59464  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC4@ha */
/* 80C59468  38 C6 8A C4 */	addi r6, r6, 0x8AC4 /* 0x00008AC4@l */
/* 80C5946C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59470  39 00 00 00 */	li r8, 0
/* 80C59474  39 20 00 00 */	li r9, 0
/* 80C59478  39 40 00 00 */	li r10, 0
/* 80C5947C  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59480  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C59484  4B 3F 40 49 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59488  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C5948C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C59490  38 00 00 FF */	li r0, 0xff
/* 80C59494  90 01 00 08 */	stw r0, 8(r1)
/* 80C59498  38 80 00 00 */	li r4, 0
/* 80C5949C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C594A0  38 00 FF FF */	li r0, -1
/* 80C594A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C594A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C594AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C594B0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C594B4  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80C594B8  38 A0 00 00 */	li r5, 0
/* 80C594BC  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC5@ha */
/* 80C594C0  38 C6 8A C5 */	addi r6, r6, 0x8AC5 /* 0x00008AC5@l */
/* 80C594C4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C594C8  39 00 00 00 */	li r8, 0
/* 80C594CC  39 20 00 00 */	li r9, 0
/* 80C594D0  39 40 00 00 */	li r10, 0
/* 80C594D4  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C594D8  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C594DC  4B 3F 3F F1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C594E0  90 7F 06 0C */	stw r3, 0x60c(r31)
/* 80C594E4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C594E8  38 00 00 FF */	li r0, 0xff
/* 80C594EC  90 01 00 08 */	stw r0, 8(r1)
/* 80C594F0  38 80 00 00 */	li r4, 0
/* 80C594F4  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C594F8  38 00 FF FF */	li r0, -1
/* 80C594FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C59500  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C59504  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59508  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5950C  80 9F 06 10 */	lwz r4, 0x610(r31)
/* 80C59510  38 A0 00 00 */	li r5, 0
/* 80C59514  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC6@ha */
/* 80C59518  38 C6 8A C6 */	addi r6, r6, 0x8AC6 /* 0x00008AC6@l */
/* 80C5951C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59520  39 00 00 00 */	li r8, 0
/* 80C59524  39 20 00 00 */	li r9, 0
/* 80C59528  39 40 00 00 */	li r10, 0
/* 80C5952C  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59530  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C59534  4B 3F 3F 99 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59538  90 7F 06 10 */	stw r3, 0x610(r31)
/* 80C5953C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C59540  38 00 00 FF */	li r0, 0xff
/* 80C59544  90 01 00 08 */	stw r0, 8(r1)
/* 80C59548  38 80 00 00 */	li r4, 0
/* 80C5954C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C59550  38 00 FF FF */	li r0, -1
/* 80C59554  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C59558  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C5955C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59560  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C59564  80 9F 06 14 */	lwz r4, 0x614(r31)
/* 80C59568  38 A0 00 00 */	li r5, 0
/* 80C5956C  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC7@ha */
/* 80C59570  38 C6 8A C7 */	addi r6, r6, 0x8AC7 /* 0x00008AC7@l */
/* 80C59574  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59578  39 00 00 00 */	li r8, 0
/* 80C5957C  39 20 00 00 */	li r9, 0
/* 80C59580  39 40 00 00 */	li r10, 0
/* 80C59584  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59588  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C5958C  4B 3F 3F 41 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59590  90 7F 06 14 */	stw r3, 0x614(r31)
/* 80C59594  48 00 01 48 */	b lbl_80C596DC
lbl_80C59598:
/* 80C59598  88 1F 06 02 */	lbz r0, 0x602(r31)
/* 80C5959C  28 00 00 00 */	cmplwi r0, 0
/* 80C595A0  41 82 00 BC */	beq lbl_80C5965C
/* 80C595A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C595A8  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C595AC  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C595B0  38 00 00 FF */	li r0, 0xff
/* 80C595B4  90 01 00 08 */	stw r0, 8(r1)
/* 80C595B8  38 80 00 00 */	li r4, 0
/* 80C595BC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C595C0  38 00 FF FF */	li r0, -1
/* 80C595C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C595C8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C595CC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C595D0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C595D4  80 9F 06 08 */	lwz r4, 0x608(r31)
/* 80C595D8  38 A0 00 00 */	li r5, 0
/* 80C595DC  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC8@ha */
/* 80C595E0  38 C6 8A C8 */	addi r6, r6, 0x8AC8 /* 0x00008AC8@l */
/* 80C595E4  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C595E8  39 00 00 00 */	li r8, 0
/* 80C595EC  39 20 00 00 */	li r9, 0
/* 80C595F0  39 40 00 00 */	li r10, 0
/* 80C595F4  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C595F8  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C595FC  4B 3F 3E D1 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59600  90 7F 06 08 */	stw r3, 0x608(r31)
/* 80C59604  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80C59608  38 00 00 FF */	li r0, 0xff
/* 80C5960C  90 01 00 08 */	stw r0, 8(r1)
/* 80C59610  38 80 00 00 */	li r4, 0
/* 80C59614  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C59618  38 00 FF FF */	li r0, -1
/* 80C5961C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C59620  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C59624  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C59628  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C5962C  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80C59630  38 A0 00 00 */	li r5, 0
/* 80C59634  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC9@ha */
/* 80C59638  38 C6 8A C9 */	addi r6, r6, 0x8AC9 /* 0x00008AC9@l */
/* 80C5963C  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C59640  39 00 00 00 */	li r8, 0
/* 80C59644  39 20 00 00 */	li r9, 0
/* 80C59648  39 40 00 00 */	li r10, 0
/* 80C5964C  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C59650  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C59654  4B 3F 3E 79 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C59658  90 7F 06 0C */	stw r3, 0x60c(r31)
lbl_80C5965C:
/* 80C5965C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C59660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C59664  38 80 00 09 */	li r4, 9
/* 80C59668  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C5966C  7C 05 07 74 */	extsb r5, r0
/* 80C59670  4B 3D BC F1 */	bl isSwitch__10dSv_info_cCFii
/* 80C59674  2C 03 00 00 */	cmpwi r3, 0
/* 80C59678  41 82 00 64 */	beq lbl_80C596DC
/* 80C5967C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C59680  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C59684  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80C59688  38 00 00 FF */	li r0, 0xff
/* 80C5968C  90 01 00 08 */	stw r0, 8(r1)
/* 80C59690  38 80 00 00 */	li r4, 0
/* 80C59694  90 81 00 0C */	stw r4, 0xc(r1)
/* 80C59698  38 00 FF FF */	li r0, -1
/* 80C5969C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C596A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C596A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C596A8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80C596AC  80 9F 06 10 */	lwz r4, 0x610(r31)
/* 80C596B0  38 A0 00 00 */	li r5, 0
/* 80C596B4  3C C0 00 01 */	lis r6, 0x0001 /* 0x00008AC3@ha */
/* 80C596B8  38 C6 8A C3 */	addi r6, r6, 0x8AC3 /* 0x00008AC3@l */
/* 80C596BC  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80C596C0  39 00 00 00 */	li r8, 0
/* 80C596C4  39 20 00 00 */	li r9, 0
/* 80C596C8  39 40 00 00 */	li r10, 0
/* 80C596CC  3D 60 80 C6 */	lis r11, lit_3737@ha /* 0x80C5A014@ha */
/* 80C596D0  C0 2B A0 14 */	lfs f1, lit_3737@l(r11)  /* 0x80C5A014@l */
/* 80C596D4  4B 3F 3D F9 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C596D8  90 7F 06 10 */	stw r3, 0x610(r31)
lbl_80C596DC:
/* 80C596DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C596E0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C596E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C596E8  7C 08 03 A6 */	mtlr r0
/* 80C596EC  38 21 00 30 */	addi r1, r1, 0x30
/* 80C596F0  4E 80 00 20 */	blr 

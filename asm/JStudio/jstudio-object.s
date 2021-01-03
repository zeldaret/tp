.include "macros.inc"

.section .text, "ax" # 80285e0c


.global JStudio_NS_TVariableValue_NS_TOutput_NS_dtor
JStudio_NS_TVariableValue_NS_TOutput_NS_dtor:
/* 80285E0C 00282D4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285E10 00282D50  7C 08 02 A6 */	mflr r0
/* 80285E14 00282D54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285E18 00282D58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285E1C 00282D5C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80285E20 00282D60  41 82 00 1C */	beq lbl_80285E3C
/* 80285E24 00282D64  3C A0 80 3C */	lis r5, lbl_803C5640@ha
/* 80285E28 00282D68  38 05 56 40 */	addi r0, r5, lbl_803C5640@l
/* 80285E2C 00282D6C  90 1F 00 00 */	stw r0, 0(r31)
/* 80285E30 00282D70  7C 80 07 35 */	extsh. r0, r4
/* 80285E34 00282D74  40 81 00 08 */	ble lbl_80285E3C
/* 80285E38 00282D78  48 04 8F 05 */	bl __dl__FPv
lbl_80285E3C:
/* 80285E3C 00282D7C  7F E3 FB 78 */	mr r3, r31
/* 80285E40 00282D80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285E44 00282D84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285E48 00282D88  7C 08 03 A6 */	mtlr r0
/* 80285E4C 00282D8C  38 21 00 10 */	addi r1, r1, 0x10
/* 80285E50 00282D90  4E 80 00 20 */	blr 

.global JStudio_NS_TVariableValue_NS_update
JStudio_NS_TVariableValue_NS_update:
/* 80285E54 00282D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285E58 00282D98  7C 08 02 A6 */	mflr r0
/* 80285E5C 00282D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285E60 00282DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285E64 00282DA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80285E68 00282DA8  7C 7E 1B 78 */	mr r30, r3
/* 80285E6C 00282DAC  7C 9F 23 78 */	mr r31, r4
/* 80285E70 00282DB0  81 83 00 08 */	lwz r12, 8(r3)
/* 80285E74 00282DB4  28 0C 00 00 */	cmplwi r12, 0
/* 80285E78 00282DB8  41 82 00 28 */	beq lbl_80285EA0
/* 80285E7C 00282DBC  7D 89 03 A6 */	mtctr r12
/* 80285E80 00282DC0  4E 80 04 21 */	bctrl 
/* 80285E84 00282DC4  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 80285E88 00282DC8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80285E8C 00282DCC  7F E4 FB 78 */	mr r4, r31
/* 80285E90 00282DD0  81 83 00 00 */	lwz r12, 0(r3)
/* 80285E94 00282DD4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80285E98 00282DD8  7D 89 03 A6 */	mtctr r12
/* 80285E9C 00282DDC  4E 80 04 21 */	bctrl 
lbl_80285EA0:
/* 80285EA0 00282DE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285EA4 00282DE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80285EA8 00282DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285EAC 00282DEC  7C 08 03 A6 */	mtlr r0
/* 80285EB0 00282DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80285EB4 00282DF4  4E 80 00 20 */	blr 
.global JStudio_NS_TVariableValue_NS_update_immediate_
JStudio_NS_TVariableValue_NS_update_immediate_:
/* 80285EB8 00282DF8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80285EBC 00282DFC  D0 03 00 00 */	stfs f0, 0(r3)
/* 80285EC0 00282E00  38 00 00 00 */	li r0, 0
/* 80285EC4 00282E04  90 03 00 08 */	stw r0, 8(r3)
/* 80285EC8 00282E08  4E 80 00 20 */	blr 
.global JStudio_NS_TVariableValue_NS_update_time_
JStudio_NS_TVariableValue_NS_update_time_:
/* 80285ECC 00282E0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285ED0 00282E10  C0 63 00 0C */	lfs f3, 0xc(r3)
/* 80285ED4 00282E14  80 03 00 04 */	lwz r0, 4(r3)
/* 80285ED8 00282E18  C8 42 BA A0 */	lfd f2, lbl_804554A0-_SDA2_BASE_(r2)
/* 80285EDC 00282E1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80285EE0 00282E20  3C 00 43 30 */	lis r0, 0x4330
/* 80285EE4 00282E24  90 01 00 08 */	stw r0, 8(r1)
/* 80285EE8 00282E28  C8 01 00 08 */	lfd f0, 8(r1)
/* 80285EEC 00282E2C  FC 00 10 28 */	fsub f0, f0, f2
/* 80285EF0 00282E30  FC 00 00 72 */	fmul f0, f0, f1
/* 80285EF4 00282E34  FC 03 00 32 */	fmul f0, f3, f0
/* 80285EF8 00282E38  FC 00 00 18 */	frsp f0, f0
/* 80285EFC 00282E3C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80285F00 00282E40  38 21 00 10 */	addi r1, r1, 0x10
/* 80285F04 00282E44  4E 80 00 20 */	blr 
.global JStudio_NS_TVariableValue_NS_update_functionValue_
JStudio_NS_TVariableValue_NS_update_functionValue_:
/* 80285F08 00282E48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80285F0C 00282E4C  7C 08 02 A6 */	mflr r0
/* 80285F10 00282E50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80285F14 00282E54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80285F18 00282E58  7C 7F 1B 78 */	mr r31, r3
/* 80285F1C 00282E5C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80285F20 00282E60  80 1F 00 04 */	lwz r0, 4(r31)
/* 80285F24 00282E64  C8 42 BA A0 */	lfd f2, lbl_804554A0-_SDA2_BASE_(r2)
/* 80285F28 00282E68  90 01 00 0C */	stw r0, 0xc(r1)
/* 80285F2C 00282E6C  3C 00 43 30 */	lis r0, 0x4330
/* 80285F30 00282E70  90 01 00 08 */	stw r0, 8(r1)
/* 80285F34 00282E74  C8 01 00 08 */	lfd f0, 8(r1)
/* 80285F38 00282E78  FC 00 10 28 */	fsub f0, f0, f2
/* 80285F3C 00282E7C  FC 20 00 72 */	fmul f1, f0, f1
/* 80285F40 00282E80  81 83 00 00 */	lwz r12, 0(r3)
/* 80285F44 00282E84  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80285F48 00282E88  7D 89 03 A6 */	mtctr r12
/* 80285F4C 00282E8C  4E 80 04 21 */	bctrl 
/* 80285F50 00282E90  FC 00 08 18 */	frsp f0, f1
/* 80285F54 00282E94  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80285F58 00282E98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80285F5C 00282E9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80285F60 00282EA0  7C 08 03 A6 */	mtlr r0
/* 80285F64 00282EA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80285F68 00282EA8  4E 80 00 20 */	blr 
.global JStudio_NS_TVariableValue_NS_TOutput_none__NS_dtor
JStudio_NS_TVariableValue_NS_TOutput_none__NS_dtor:
/* 80285F6C 00282EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285F70 00282EB0  7C 08 02 A6 */	mflr r0
/* 80285F74 00282EB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285F78 00282EB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285F7C 00282EBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80285F80 00282EC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80285F84 00282EC4  7C 9F 23 78 */	mr r31, r4
/* 80285F88 00282EC8  41 82 00 28 */	beq lbl_80285FB0
/* 80285F8C 00282ECC  3C 80 80 3C */	lis r4, lbl_803C5630@ha
/* 80285F90 00282ED0  38 04 56 30 */	addi r0, r4, lbl_803C5630@l
/* 80285F94 00282ED4  90 1E 00 00 */	stw r0, 0(r30)
/* 80285F98 00282ED8  38 80 00 00 */	li r4, 0
/* 80285F9C 00282EDC  4B FF FE 71 */	bl JStudio_NS_TVariableValue_NS_TOutput_NS_dtor
/* 80285FA0 00282EE0  7F E0 07 35 */	extsh. r0, r31
/* 80285FA4 00282EE4  40 81 00 0C */	ble lbl_80285FB0
/* 80285FA8 00282EE8  7F C3 F3 78 */	mr r3, r30
/* 80285FAC 00282EEC  48 04 8D 91 */	bl __dl__FPv
lbl_80285FB0:
/* 80285FB0 00282EF0  7F C3 F3 78 */	mr r3, r30
/* 80285FB4 00282EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80285FB8 00282EF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80285FBC 00282EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80285FC0 00282F00  7C 08 03 A6 */	mtlr r0
/* 80285FC4 00282F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80285FC8 00282F08  4E 80 00 20 */	blr 
/* 80285FCC 00282F0C  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_NS_dtor
JStudio_NS_TAdaptor_NS_dtor:
/* 80285FD0 00282F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80285FD4 00282F14  7C 08 02 A6 */	mflr r0
/* 80285FD8 00282F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80285FDC 00282F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80285FE0 00282F20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80285FE4 00282F24  41 82 00 1C */	beq lbl_80286000
/* 80285FE8 00282F28  3C A0 80 3C */	lis r5, lbl_803C5610@ha
/* 80285FEC 00282F2C  38 05 56 10 */	addi r0, r5, lbl_803C5610@l
/* 80285FF0 00282F30  90 1F 00 00 */	stw r0, 0(r31)
/* 80285FF4 00282F34  7C 80 07 35 */	extsh. r0, r4
/* 80285FF8 00282F38  40 81 00 08 */	ble lbl_80286000
/* 80285FFC 00282F3C  48 04 8D 41 */	bl __dl__FPv
lbl_80286000:
/* 80286000 00282F40  7F E3 FB 78 */	mr r3, r31
/* 80286004 00282F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286008 00282F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028600C 00282F4C  7C 08 03 A6 */	mtlr r0
/* 80286010 00282F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80286014 00282F54  4E 80 00 20 */	blr 
/* 80286018 00282F58  4E 80 00 20 */	blr 
/* 8028601C 00282F5C  4E 80 00 20 */	blr 
/* 80286020 00282F60  4E 80 00 20 */	blr 
/* 80286024 00282F64  4E 80 00 20 */	blr 
/* 80286028 00282F68  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue:
/* 8028602C 00282F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286030 00282F70  7C 08 02 A6 */	mflr r0
/* 80286034 00282F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286038 00282F78  28 06 00 12 */	cmplwi r6, 0x12
/* 8028603C 00282F7C  41 81 00 80 */	bgt lbl_802860BC
/* 80286040 00282F80  3D 20 80 3C */	lis r9, lbl_803C4B9C@ha
/* 80286044 00282F84  39 29 4B 9C */	addi r9, r9, lbl_803C4B9C@l
/* 80286048 00282F88  54 C0 10 3A */	slwi r0, r6, 2
/* 8028604C 00282F8C  7C 09 00 2E */	lwzx r0, r9, r0
/* 80286050 00282F90  7C 09 03 A6 */	mtctr r0
/* 80286054 00282F94  4E 80 04 20 */	bctr 
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_
/* 80286058 00282F98  3C C0 80 28 */	lis r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_@ha
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_
/* 8028605C 00282F9C  38 06 65 6C */	addi r0, r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_@l
/* 80286060 00282FA0  7C 0C 03 78 */	mr r12, r0
/* 80286064 00282FA4  48 00 00 48 */	b lbl_802860AC
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_
/* 80286068 00282FA8  3C C0 80 28 */	lis r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_@ha
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_
/* 8028606C 00282FAC  38 06 65 84 */	addi r0, r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_@l
/* 80286070 00282FB0  7C 0C 03 78 */	mr r12, r0
/* 80286074 00282FB4  48 00 00 38 */	b lbl_802860AC
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_
/* 80286078 00282FB8  3C C0 80 28 */	lis r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_@ha
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_
/* 8028607C 00282FBC  38 06 65 B0 */	addi r0, r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_@l
/* 80286080 00282FC0  7C 0C 03 78 */	mr r12, r0
/* 80286084 00282FC4  48 00 00 28 */	b lbl_802860AC
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_NAME_
/* 80286088 00282FC8  3C C0 80 28 */	lis r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_NAME_@ha
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_NAME_
/* 8028608C 00282FCC  38 06 65 DC */	addi r0, r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_NAME_@l
/* 80286090 00282FD0  7C 0C 03 78 */	mr r12, r0
/* 80286094 00282FD4  48 00 00 18 */	b lbl_802860AC
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_
/* 80286098 00282FD8  3C C0 80 28 */	lis r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_@ha
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_
/* 8028609C 00282FDC  38 06 66 48 */	addi r0, r6, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_@l
/* 802860A0 00282FE0  7C 0C 03 78 */	mr r12, r0
/* 802860A4 00282FE4  48 00 00 08 */	b lbl_802860AC
/* 802860A8 00282FE8  48 00 00 14 */	b lbl_802860BC
lbl_802860AC:
/* 802860AC 00282FEC  7C E6 3B 78 */	mr r6, r7
/* 802860B0 00282FF0  7D 07 43 78 */	mr r7, r8
/* 802860B4 00282FF4  7D 89 03 A6 */	mtctr r12
/* 802860B8 00282FF8  4E 80 04 21 */	bctrl 
lbl_802860BC:
/* 802860BC 00282FFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802860C0 00283000  7C 08 03 A6 */	mtlr r0
/* 802860C4 00283004  38 21 00 10 */	addi r1, r1, 0x10
/* 802860C8 00283008  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_n
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_n:
/* 802860CC 0028300C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802860D0 00283010  7C 08 02 A6 */	mflr r0
/* 802860D4 00283014  90 01 00 34 */	stw r0, 0x34(r1)
/* 802860D8 00283018  39 61 00 30 */	addi r11, r1, 0x30
/* 802860DC 0028301C  48 0D C0 F1 */	bl _savegpr_25
/* 802860E0 00283020  7C 79 1B 78 */	mr r25, r3
/* 802860E4 00283024  7C 9A 23 78 */	mr r26, r4
/* 802860E8 00283028  7D 1B 43 78 */	mr r27, r8
/* 802860EC 0028302C  2C 07 00 03 */	cmpwi r7, 3
/* 802860F0 00283030  41 82 00 4C */	beq lbl_8028613C
/* 802860F4 00283034  40 80 00 14 */	bge lbl_80286108
/* 802860F8 00283038  2C 07 00 01 */	cmpwi r7, 1
/* 802860FC 0028303C  41 82 00 18 */	beq lbl_80286114
/* 80286100 00283040  40 80 00 28 */	bge lbl_80286128
/* 80286104 00283044  48 00 00 A4 */	b lbl_802861A8
lbl_80286108:
/* 80286108 00283048  2C 07 00 12 */	cmpwi r7, 0x12
/* 8028610C 0028304C  41 82 00 44 */	beq lbl_80286150
/* 80286110 00283050  48 00 00 98 */	b lbl_802861A8
lbl_80286114:
/* 80286114 00283054  3B 80 00 00 */	li r28, 0
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_
/* 80286118 00283058  3C 60 80 28 */	lis r3, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_@ha
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_
/* 8028611C 0028305C  38 03 65 6C */	addi r0, r3, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_@l
/* 80286120 00283060  7C 1D 03 78 */	mr r29, r0
/* 80286124 00283064  48 00 00 44 */	b lbl_80286168
lbl_80286128:
/* 80286128 00283068  3B 80 00 04 */	li r28, 4
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_
/* 8028612C 0028306C  3C 60 80 28 */	lis r3, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_@ha
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_
/* 80286130 00283070  38 03 65 84 */	addi r0, r3, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_@l
/* 80286134 00283074  7C 1D 03 78 */	mr r29, r0
/* 80286138 00283078  48 00 00 30 */	b lbl_80286168
lbl_8028613C:
/* 8028613C 0028307C  3B 80 00 04 */	li r28, 4
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_
/* 80286140 00283080  3C 60 80 28 */	lis r3, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_@ha
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_
/* 80286144 00283084  38 03 65 B0 */	addi r0, r3, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_@l
/* 80286148 00283088  7C 1D 03 78 */	mr r29, r0
/* 8028614C 0028308C  48 00 00 1C */	b lbl_80286168
lbl_80286150:
/* 80286150 00283090  3B 80 00 04 */	li r28, 4
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_
/* 80286154 00283094  3C 60 80 28 */	lis r3, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_@ha
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_
/* 80286158 00283098  38 03 66 48 */	addi r0, r3, JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_@l
/* 8028615C 0028309C  7C 1D 03 78 */	mr r29, r0
/* 80286160 002830A0  48 00 00 08 */	b lbl_80286168
/* 80286164 002830A4  48 00 00 44 */	b lbl_802861A8
lbl_80286168:
/* 80286168 002830A8  7C BF 2B 78 */	mr r31, r5
/* 8028616C 002830AC  54 C0 10 3A */	slwi r0, r6, 2
/* 80286170 002830B0  7F C5 02 14 */	add r30, r5, r0
/* 80286174 002830B4  48 00 00 2C */	b lbl_802861A0
lbl_80286178:
/* 80286178 002830B8  7F 23 CB 78 */	mr r3, r25
/* 8028617C 002830BC  7F 44 D3 78 */	mr r4, r26
/* 80286180 002830C0  80 BF 00 00 */	lwz r5, 0(r31)
/* 80286184 002830C4  7F 66 DB 78 */	mr r6, r27
/* 80286188 002830C8  7F 87 E3 78 */	mr r7, r28
/* 8028618C 002830CC  7F AC EB 78 */	mr r12, r29
/* 80286190 002830D0  7D 89 03 A6 */	mtctr r12
/* 80286194 002830D4  3B FF 00 04 */	addi r31, r31, 4
/* 80286198 002830D8  4E 80 04 21 */	bctrl 
/* 8028619C 002830DC  7F 7B E2 14 */	add r27, r27, r28
lbl_802861A0:
/* 802861A0 002830E0  7C 1F F0 40 */	cmplw r31, r30
/* 802861A4 002830E4  40 82 FF D4 */	bne lbl_80286178
lbl_802861A8:
/* 802861A8 002830E8  39 61 00 30 */	addi r11, r1, 0x30
/* 802861AC 002830EC  48 0D C0 6D */	bl _restgpr_25
/* 802861B0 002830F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802861B4 002830F4  7C 08 03 A6 */	mtlr r0
/* 802861B8 002830F8  38 21 00 30 */	addi r1, r1, 0x30
/* 802861BC 002830FC  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_immediate
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_immediate:
.global JStudio_NS_TVariableValue_NS_update_immediate_
/* 802861C0 00283100  3C A0 80 28 */	lis r5, JStudio_NS_TVariableValue_NS_update_immediate_@ha
.global JStudio_NS_TVariableValue_NS_update_immediate_
/* 802861C4 00283104  38 C5 5E B8 */	addi r6, r5, JStudio_NS_TVariableValue_NS_update_immediate_@l
/* 802861C8 00283108  38 A0 00 00 */	li r5, 0
/* 802861CC 0028310C  48 00 00 24 */	b lbl_802861F0
lbl_802861D0:
/* 802861D0 00283110  C0 04 00 04 */	lfs f0, 4(r4)
/* 802861D4 00283114  80 E3 00 08 */	lwz r7, 8(r3)
/* 802861D8 00283118  1C 08 00 14 */	mulli r0, r8, 0x14
/* 802861DC 0028311C  7C E7 02 14 */	add r7, r7, r0
/* 802861E0 00283120  90 C7 00 08 */	stw r6, 8(r7)
/* 802861E4 00283124  90 A7 00 04 */	stw r5, 4(r7)
/* 802861E8 00283128  D0 07 00 0C */	stfs f0, 0xc(r7)
/* 802861EC 0028312C  38 84 00 08 */	addi r4, r4, 8
lbl_802861F0:
/* 802861F0 00283130  81 04 00 00 */	lwz r8, 0(r4)
/* 802861F4 00283134  3C 08 00 01 */	addis r0, r8, 1
/* 802861F8 00283138  28 00 FF FF */	cmplwi r0, 0xffff
/* 802861FC 0028313C  40 82 FF D4 */	bne lbl_802861D0
/* 80286200 00283140  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_Vec
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_Vec:
/* 80286204 00283144  C0 05 00 00 */	lfs f0, 0(r5)
/* 80286208 00283148  80 C3 00 08 */	lwz r6, 8(r3)
/* 8028620C 0028314C  80 04 00 00 */	lwz r0, 0(r4)
/* 80286210 00283150  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286214 00283154  7D 26 02 14 */	add r9, r6, r0
.global JStudio_NS_TVariableValue_NS_update_immediate_
/* 80286218 00283158  3C C0 80 28 */	lis r6, JStudio_NS_TVariableValue_NS_update_immediate_@ha
.global JStudio_NS_TVariableValue_NS_update_immediate_
/* 8028621C 0028315C  39 06 5E B8 */	addi r8, r6, JStudio_NS_TVariableValue_NS_update_immediate_@l
/* 80286220 00283160  91 09 00 08 */	stw r8, 8(r9)
/* 80286224 00283164  38 E0 00 00 */	li r7, 0
/* 80286228 00283168  90 E9 00 04 */	stw r7, 4(r9)
/* 8028622C 0028316C  D0 09 00 0C */	stfs f0, 0xc(r9)
/* 80286230 00283170  C0 05 00 04 */	lfs f0, 4(r5)
/* 80286234 00283174  80 C3 00 08 */	lwz r6, 8(r3)
/* 80286238 00283178  80 04 00 04 */	lwz r0, 4(r4)
/* 8028623C 0028317C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286240 00283180  7C C6 02 14 */	add r6, r6, r0
/* 80286244 00283184  91 06 00 08 */	stw r8, 8(r6)
/* 80286248 00283188  90 E6 00 04 */	stw r7, 4(r6)
/* 8028624C 0028318C  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 80286250 00283190  C0 05 00 08 */	lfs f0, 8(r5)
/* 80286254 00283194  80 63 00 08 */	lwz r3, 8(r3)
/* 80286258 00283198  80 04 00 08 */	lwz r0, 8(r4)
/* 8028625C 0028319C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286260 002831A0  7C 63 02 14 */	add r3, r3, r0
/* 80286264 002831A4  91 03 00 08 */	stw r8, 8(r3)
/* 80286268 002831A8  90 E3 00 04 */	stw r7, 4(r3)
/* 8028626C 002831AC  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80286270 002831B0  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_NS_adaptor_getVariableValue_Vec
JStudio_NS_TAdaptor_NS_adaptor_getVariableValue_Vec:
/* 80286274 002831B4  80 63 00 08 */	lwz r3, 8(r3)
/* 80286278 002831B8  80 05 00 00 */	lwz r0, 0(r5)
/* 8028627C 002831BC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286280 002831C0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80286284 002831C4  D0 04 00 00 */	stfs f0, 0(r4)
/* 80286288 002831C8  80 05 00 04 */	lwz r0, 4(r5)
/* 8028628C 002831CC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286290 002831D0  7C 03 04 2E */	lfsx f0, r3, r0
/* 80286294 002831D4  D0 04 00 04 */	stfs f0, 4(r4)
/* 80286298 002831D8  80 05 00 08 */	lwz r0, 8(r5)
/* 8028629C 002831DC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802862A0 002831E0  7C 03 04 2E */	lfsx f0, r3, r0
/* 802862A4 002831E4  D0 04 00 08 */	stfs f0, 8(r4)
/* 802862A8 002831E8  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_GXColor
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_GXColor:
/* 802862AC 002831EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802862B0 002831F0  88 05 00 00 */	lbz r0, 0(r5)
/* 802862B4 002831F4  C8 22 BA A0 */	lfd f1, lbl_804554A0-_SDA2_BASE_(r2)
/* 802862B8 002831F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802862BC 002831FC  3D 20 43 30 */	lis r9, 0x4330
/* 802862C0 00283200  91 21 00 08 */	stw r9, 8(r1)
/* 802862C4 00283204  C8 01 00 08 */	lfd f0, 8(r1)
/* 802862C8 00283208  EC 00 08 28 */	fsubs f0, f0, f1
/* 802862CC 0028320C  80 C3 00 08 */	lwz r6, 8(r3)
/* 802862D0 00283210  80 04 00 00 */	lwz r0, 0(r4)
/* 802862D4 00283214  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802862D8 00283218  7D 46 02 14 */	add r10, r6, r0
.global JStudio_NS_TVariableValue_NS_update_immediate_
/* 802862DC 0028321C  3C C0 80 28 */	lis r6, JStudio_NS_TVariableValue_NS_update_immediate_@ha
.global JStudio_NS_TVariableValue_NS_update_immediate_
/* 802862E0 00283220  39 06 5E B8 */	addi r8, r6, JStudio_NS_TVariableValue_NS_update_immediate_@l
/* 802862E4 00283224  91 0A 00 08 */	stw r8, 8(r10)
/* 802862E8 00283228  38 E0 00 00 */	li r7, 0
/* 802862EC 0028322C  90 EA 00 04 */	stw r7, 4(r10)
/* 802862F0 00283230  D0 0A 00 0C */	stfs f0, 0xc(r10)
/* 802862F4 00283234  88 05 00 01 */	lbz r0, 1(r5)
/* 802862F8 00283238  90 01 00 14 */	stw r0, 0x14(r1)
/* 802862FC 0028323C  91 21 00 10 */	stw r9, 0x10(r1)
/* 80286300 00283240  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80286304 00283244  EC 00 08 28 */	fsubs f0, f0, f1
/* 80286308 00283248  80 C3 00 08 */	lwz r6, 8(r3)
/* 8028630C 0028324C  80 04 00 04 */	lwz r0, 4(r4)
/* 80286310 00283250  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286314 00283254  7C C6 02 14 */	add r6, r6, r0
/* 80286318 00283258  91 06 00 08 */	stw r8, 8(r6)
/* 8028631C 0028325C  90 E6 00 04 */	stw r7, 4(r6)
/* 80286320 00283260  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 80286324 00283264  88 05 00 02 */	lbz r0, 2(r5)
/* 80286328 00283268  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8028632C 0028326C  91 21 00 18 */	stw r9, 0x18(r1)
/* 80286330 00283270  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80286334 00283274  EC 00 08 28 */	fsubs f0, f0, f1
/* 80286338 00283278  80 C3 00 08 */	lwz r6, 8(r3)
/* 8028633C 0028327C  80 04 00 08 */	lwz r0, 8(r4)
/* 80286340 00283280  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286344 00283284  7C C6 02 14 */	add r6, r6, r0
/* 80286348 00283288  91 06 00 08 */	stw r8, 8(r6)
/* 8028634C 0028328C  90 E6 00 04 */	stw r7, 4(r6)
/* 80286350 00283290  D0 06 00 0C */	stfs f0, 0xc(r6)
/* 80286354 00283294  88 05 00 03 */	lbz r0, 3(r5)
/* 80286358 00283298  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028635C 0028329C  91 21 00 20 */	stw r9, 0x20(r1)
/* 80286360 002832A0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80286364 002832A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80286368 002832A8  80 63 00 08 */	lwz r3, 8(r3)
/* 8028636C 002832AC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80286370 002832B0  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286374 002832B4  7C 63 02 14 */	add r3, r3, r0
/* 80286378 002832B8  91 03 00 08 */	stw r8, 8(r3)
/* 8028637C 002832BC  90 E3 00 04 */	stw r7, 4(r3)
/* 80286380 002832C0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80286384 002832C4  38 21 00 30 */	addi r1, r1, 0x30
/* 80286388 002832C8  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_NS_adaptor_getVariableValue_GXColor
JStudio_NS_TAdaptor_NS_adaptor_getVariableValue_GXColor:
/* 8028638C 002832CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286390 002832D0  80 C3 00 08 */	lwz r6, 8(r3)
/* 80286394 002832D4  80 05 00 00 */	lwz r0, 0(r5)
/* 80286398 002832D8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028639C 002832DC  7C 26 04 2E */	lfsx f1, r6, r0
/* 802863A0 002832E0  C0 02 BA A8 */	lfs f0, lbl_804554A8-_SDA2_BASE_(r2)
/* 802863A4 002832E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802863A8 002832E8  4C 40 13 82 */	cror 2, 0, 2
/* 802863AC 002832EC  40 82 00 0C */	bne lbl_802863B8
/* 802863B0 002832F0  38 00 00 00 */	li r0, 0
/* 802863B4 002832F4  48 00 00 28 */	b lbl_802863DC
lbl_802863B8:
/* 802863B8 002832F8  C0 02 BA AC */	lfs f0, lbl_804554AC-_SDA2_BASE_(r2)
/* 802863BC 002832FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802863C0 00283300  4C 41 13 82 */	cror 2, 1, 2
/* 802863C4 00283304  40 82 00 0C */	bne lbl_802863D0
/* 802863C8 00283308  38 00 00 FF */	li r0, 0xff
/* 802863CC 0028330C  48 00 00 10 */	b lbl_802863DC
lbl_802863D0:
/* 802863D0 00283310  FC 00 08 1E */	fctiwz f0, f1
/* 802863D4 00283314  D8 01 00 08 */	stfd f0, 8(r1)
/* 802863D8 00283318  80 01 00 0C */	lwz r0, 0xc(r1)
lbl_802863DC:
/* 802863DC 0028331C  98 04 00 00 */	stb r0, 0(r4)
/* 802863E0 00283320  80 C3 00 08 */	lwz r6, 8(r3)
/* 802863E4 00283324  80 05 00 04 */	lwz r0, 4(r5)
/* 802863E8 00283328  1C 00 00 14 */	mulli r0, r0, 0x14
/* 802863EC 0028332C  7C 26 04 2E */	lfsx f1, r6, r0
/* 802863F0 00283330  C0 02 BA A8 */	lfs f0, lbl_804554A8-_SDA2_BASE_(r2)
/* 802863F4 00283334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802863F8 00283338  4C 40 13 82 */	cror 2, 0, 2
/* 802863FC 0028333C  40 82 00 0C */	bne lbl_80286408
/* 80286400 00283340  38 00 00 00 */	li r0, 0
/* 80286404 00283344  48 00 00 28 */	b lbl_8028642C
lbl_80286408:
/* 80286408 00283348  C0 02 BA AC */	lfs f0, lbl_804554AC-_SDA2_BASE_(r2)
/* 8028640C 0028334C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80286410 00283350  4C 41 13 82 */	cror 2, 1, 2
/* 80286414 00283354  40 82 00 0C */	bne lbl_80286420
/* 80286418 00283358  38 00 00 FF */	li r0, 0xff
/* 8028641C 0028335C  48 00 00 10 */	b lbl_8028642C
lbl_80286420:
/* 80286420 00283360  FC 00 08 1E */	fctiwz f0, f1
/* 80286424 00283364  D8 01 00 08 */	stfd f0, 8(r1)
/* 80286428 00283368  80 01 00 0C */	lwz r0, 0xc(r1)
lbl_8028642C:
/* 8028642C 0028336C  98 04 00 01 */	stb r0, 1(r4)
/* 80286430 00283370  80 C3 00 08 */	lwz r6, 8(r3)
/* 80286434 00283374  80 05 00 08 */	lwz r0, 8(r5)
/* 80286438 00283378  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028643C 0028337C  7C 26 04 2E */	lfsx f1, r6, r0
/* 80286440 00283380  C0 02 BA A8 */	lfs f0, lbl_804554A8-_SDA2_BASE_(r2)
/* 80286444 00283384  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80286448 00283388  4C 40 13 82 */	cror 2, 0, 2
/* 8028644C 0028338C  40 82 00 0C */	bne lbl_80286458
/* 80286450 00283390  38 00 00 00 */	li r0, 0
/* 80286454 00283394  48 00 00 28 */	b lbl_8028647C
lbl_80286458:
/* 80286458 00283398  C0 02 BA AC */	lfs f0, lbl_804554AC-_SDA2_BASE_(r2)
/* 8028645C 0028339C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80286460 002833A0  4C 41 13 82 */	cror 2, 1, 2
/* 80286464 002833A4  40 82 00 0C */	bne lbl_80286470
/* 80286468 002833A8  38 00 00 FF */	li r0, 0xff
/* 8028646C 002833AC  48 00 00 10 */	b lbl_8028647C
lbl_80286470:
/* 80286470 002833B0  FC 00 08 1E */	fctiwz f0, f1
/* 80286474 002833B4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80286478 002833B8  80 01 00 0C */	lwz r0, 0xc(r1)
lbl_8028647C:
/* 8028647C 002833BC  98 04 00 02 */	stb r0, 2(r4)
/* 80286480 002833C0  80 63 00 08 */	lwz r3, 8(r3)
/* 80286484 002833C4  80 05 00 0C */	lwz r0, 0xc(r5)
/* 80286488 002833C8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028648C 002833CC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80286490 002833D0  C0 02 BA A8 */	lfs f0, lbl_804554A8-_SDA2_BASE_(r2)
/* 80286494 002833D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80286498 002833D8  4C 40 13 82 */	cror 2, 0, 2
/* 8028649C 002833DC  40 82 00 0C */	bne lbl_802864A8
/* 802864A0 002833E0  38 00 00 00 */	li r0, 0
/* 802864A4 002833E4  48 00 00 28 */	b lbl_802864CC
lbl_802864A8:
/* 802864A8 002833E8  C0 02 BA AC */	lfs f0, lbl_804554AC-_SDA2_BASE_(r2)
/* 802864AC 002833EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802864B0 002833F0  4C 41 13 82 */	cror 2, 1, 2
/* 802864B4 002833F4  40 82 00 0C */	bne lbl_802864C0
/* 802864B8 002833F8  38 00 00 FF */	li r0, 0xff
/* 802864BC 002833FC  48 00 00 10 */	b lbl_802864CC
lbl_802864C0:
/* 802864C0 00283400  FC 00 08 1E */	fctiwz f0, f1
/* 802864C4 00283404  D8 01 00 08 */	stfd f0, 8(r1)
/* 802864C8 00283408  80 01 00 0C */	lwz r0, 0xc(r1)
lbl_802864CC:
/* 802864CC 0028340C  98 04 00 03 */	stb r0, 3(r4)
/* 802864D0 00283410  38 21 00 10 */	addi r1, r1, 0x10
/* 802864D4 00283414  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_NS_adaptor_updateVariableValue
JStudio_NS_TAdaptor_NS_adaptor_updateVariableValue:
/* 802864D8 00283418  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802864DC 0028341C  7C 08 02 A6 */	mflr r0
/* 802864E0 00283420  90 01 00 34 */	stw r0, 0x34(r1)
/* 802864E4 00283424  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 802864E8 00283428  39 61 00 28 */	addi r11, r1, 0x28
/* 802864EC 0028342C  48 0D BC E9 */	bl _savegpr_27
/* 802864F0 00283430  7C 7B 1B 78 */	mr r27, r3
/* 802864F4 00283434  7C BC 2B 78 */	mr r28, r5
/* 802864F8 00283438  CB E4 00 58 */	lfd f31, 0x58(r4)
/* 802864FC 0028343C  83 A3 00 08 */	lwz r29, 8(r3)
/* 80286500 00283440  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80286504 00283444  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80286508 00283448  7F DD 02 14 */	add r30, r29, r0
/* 8028650C 0028344C  3B E0 FF FF */	li r31, -1
/* 80286510 00283450  48 00 00 38 */	b lbl_80286548
lbl_80286514:
/* 80286514 00283454  7F A3 EB 78 */	mr r3, r29
/* 80286518 00283458  80 9D 00 04 */	lwz r4, 4(r29)
/* 8028651C 0028345C  20 04 FF FF */	subfic r0, r4, -1
/* 80286520 00283460  7C 00 E0 40 */	cmplw r0, r28
/* 80286524 00283464  3B BD 00 14 */	addi r29, r29, 0x14
/* 80286528 00283468  41 81 00 0C */	bgt lbl_80286534
/* 8028652C 0028346C  93 E3 00 04 */	stw r31, 4(r3)
/* 80286530 00283470  48 00 00 0C */	b lbl_8028653C
lbl_80286534:
/* 80286534 00283474  7C 04 E2 14 */	add r0, r4, r28
/* 80286538 00283478  90 03 00 04 */	stw r0, 4(r3)
lbl_8028653C:
/* 8028653C 0028347C  FC 20 F8 90 */	fmr f1, f31
/* 80286540 00283480  7F 64 DB 78 */	mr r4, r27
/* 80286544 00283484  4B FF F9 11 */	bl JStudio_NS_TVariableValue_NS_update
lbl_80286548:
/* 80286548 00283488  7C 1D F0 40 */	cmplw r29, r30
/* 8028654C 0028348C  40 82 FF C8 */	bne lbl_80286514
/* 80286550 00283490  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 80286554 00283494  39 61 00 28 */	addi r11, r1, 0x28
/* 80286558 00283498  48 0D BC C9 */	bl _restgpr_27
/* 8028655C 0028349C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80286560 002834A0  7C 08 03 A6 */	mtlr r0
/* 80286564 002834A4  38 21 00 30 */	addi r1, r1, 0x30
/* 80286568 002834A8  4E 80 00 20 */	blr 
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_VOID_:
/* 8028656C 002834AC  38 C0 00 00 */	li r6, 0
/* 80286570 002834B0  80 83 00 08 */	lwz r4, 8(r3)
/* 80286574 002834B4  1C 65 00 14 */	mulli r3, r5, 0x14
/* 80286578 002834B8  38 03 00 08 */	addi r0, r3, 8
/* 8028657C 002834BC  7C C4 01 2E */	stwx r6, r4, r0
/* 80286580 002834C0  4E 80 00 20 */	blr 
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_IMMEDIATE_:
/* 80286584 002834C4  80 63 00 08 */	lwz r3, 8(r3)
/* 80286588 002834C8  1C 05 00 14 */	mulli r0, r5, 0x14
/* 8028658C 002834CC  7C 83 02 14 */	add r4, r3, r0
/* 80286590 002834D0  C0 06 00 00 */	lfs f0, 0(r6)
.global JStudio_NS_TVariableValue_NS_update_immediate_
/* 80286594 002834D4  3C 60 80 28 */	lis r3, JStudio_NS_TVariableValue_NS_update_immediate_@ha
.global JStudio_NS_TVariableValue_NS_update_immediate_
/* 80286598 002834D8  38 03 5E B8 */	addi r0, r3, JStudio_NS_TVariableValue_NS_update_immediate_@l
/* 8028659C 002834DC  90 04 00 08 */	stw r0, 8(r4)
/* 802865A0 002834E0  38 00 00 00 */	li r0, 0
/* 802865A4 002834E4  90 04 00 04 */	stw r0, 4(r4)
/* 802865A8 002834E8  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802865AC 002834EC  4E 80 00 20 */	blr 
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_TIME_:
/* 802865B0 002834F0  80 63 00 08 */	lwz r3, 8(r3)
/* 802865B4 002834F4  1C 05 00 14 */	mulli r0, r5, 0x14
/* 802865B8 002834F8  7C 83 02 14 */	add r4, r3, r0
/* 802865BC 002834FC  C0 06 00 00 */	lfs f0, 0(r6)
.global JStudio_NS_TVariableValue_NS_update_time_
/* 802865C0 00283500  3C 60 80 28 */	lis r3, JStudio_NS_TVariableValue_NS_update_time_@ha
.global JStudio_NS_TVariableValue_NS_update_time_
/* 802865C4 00283504  38 03 5E CC */	addi r0, r3, JStudio_NS_TVariableValue_NS_update_time_@l
/* 802865C8 00283508  90 04 00 08 */	stw r0, 8(r4)
/* 802865CC 0028350C  38 00 00 00 */	li r0, 0
/* 802865D0 00283510  90 04 00 04 */	stw r0, 4(r4)
/* 802865D4 00283514  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 802865D8 00283518  4E 80 00 20 */	blr 
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_NAME_
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_NAME_:
/* 802865DC 0028351C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802865E0 00283520  7C 08 02 A6 */	mflr r0
/* 802865E4 00283524  90 01 00 14 */	stw r0, 0x14(r1)
/* 802865E8 00283528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802865EC 0028352C  80 63 00 08 */	lwz r3, 8(r3)
/* 802865F0 00283530  1C 05 00 14 */	mulli r0, r5, 0x14
/* 802865F4 00283534  7F E3 02 14 */	add r31, r3, r0
/* 802865F8 00283538  38 64 00 60 */	addi r3, r4, 0x60
/* 802865FC 0028353C  7C C4 33 78 */	mr r4, r6
/* 80286600 00283540  7C E5 3B 78 */	mr r5, r7
/* 80286604 00283544  4B FF E2 31 */	bl JStudio_NS_fvb_NS_TControl_NS_getObject
/* 80286608 00283548  28 03 00 00 */	cmplwi r3, 0
/* 8028660C 0028354C  40 82 00 0C */	bne lbl_80286618
/* 80286610 00283550  38 80 00 00 */	li r4, 0
/* 80286614 00283554  48 00 00 08 */	b lbl_8028661C
lbl_80286618:
/* 80286618 00283558  80 83 00 14 */	lwz r4, 0x14(r3)
lbl_8028661C:
.global JStudio_NS_TVariableValue_NS_update_functionValue_
/* 8028661C 0028355C  3C 60 80 28 */	lis r3, JStudio_NS_TVariableValue_NS_update_functionValue_@ha
.global JStudio_NS_TVariableValue_NS_update_functionValue_
/* 80286620 00283560  38 03 5F 08 */	addi r0, r3, JStudio_NS_TVariableValue_NS_update_functionValue_@l
/* 80286624 00283564  90 1F 00 08 */	stw r0, 8(r31)
/* 80286628 00283568  38 00 00 00 */	li r0, 0
/* 8028662C 0028356C  90 1F 00 04 */	stw r0, 4(r31)
/* 80286630 00283570  90 9F 00 0C */	stw r4, 0xc(r31)
/* 80286634 00283574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286638 00283578  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028663C 0028357C  7C 08 03 A6 */	mtlr r0
/* 80286640 00283580  38 21 00 10 */	addi r1, r1, 0x10
/* 80286644 00283584  4E 80 00 20 */	blr 
.global JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_
JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_FVR_INDEX_:
/* 80286648 00283588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028664C 0028358C  7C 08 02 A6 */	mflr r0
/* 80286650 00283590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286654 00283594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286658 00283598  80 63 00 08 */	lwz r3, 8(r3)
/* 8028665C 0028359C  1C 05 00 14 */	mulli r0, r5, 0x14
/* 80286660 002835A0  7F E3 02 14 */	add r31, r3, r0
/* 80286664 002835A4  38 64 00 60 */	addi r3, r4, 0x60
/* 80286668 002835A8  80 86 00 00 */	lwz r4, 0(r6)
/* 8028666C 002835AC  4B FF E2 69 */	bl JStudio_NS_fvb_NS_TControl_NS_getObject_index
/* 80286670 002835B0  28 03 00 00 */	cmplwi r3, 0
/* 80286674 002835B4  40 82 00 0C */	bne lbl_80286680
/* 80286678 002835B8  38 80 00 00 */	li r4, 0
/* 8028667C 002835BC  48 00 00 08 */	b lbl_80286684
lbl_80286680:
/* 80286680 002835C0  80 83 00 14 */	lwz r4, 0x14(r3)
lbl_80286684:
.global JStudio_NS_TVariableValue_NS_update_functionValue_
/* 80286684 002835C4  3C 60 80 28 */	lis r3, JStudio_NS_TVariableValue_NS_update_functionValue_@ha
.global JStudio_NS_TVariableValue_NS_update_functionValue_
/* 80286688 002835C8  38 03 5F 08 */	addi r0, r3, JStudio_NS_TVariableValue_NS_update_functionValue_@l
/* 8028668C 002835CC  90 1F 00 08 */	stw r0, 8(r31)
/* 80286690 002835D0  38 00 00 00 */	li r0, 0
/* 80286694 002835D4  90 1F 00 04 */	stw r0, 4(r31)
/* 80286698 002835D8  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8028669C 002835DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802866A0 002835E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802866A4 002835E4  7C 08 03 A6 */	mtlr r0
/* 802866A8 002835E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802866AC 002835EC  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_NS_dtor
JStudio_NS_TObject_NS_dtor:
/* 802866B0 002835F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802866B4 002835F4  7C 08 02 A6 */	mflr r0
/* 802866B8 002835F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802866BC 002835FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802866C0 00283600  93 C1 00 08 */	stw r30, 8(r1)
/* 802866C4 00283604  7C 7E 1B 79 */	or. r30, r3, r3
/* 802866C8 00283608  7C 9F 23 78 */	mr r31, r4
/* 802866CC 0028360C  41 82 00 4C */	beq lbl_80286718
/* 802866D0 00283610  3C 60 80 3C */	lis r3, lbl_803C55F0@ha
/* 802866D4 00283614  38 03 55 F0 */	addi r0, r3, lbl_803C55F0@l
/* 802866D8 00283618  90 1E 00 08 */	stw r0, 8(r30)
/* 802866DC 0028361C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 802866E0 00283620  28 03 00 00 */	cmplwi r3, 0
/* 802866E4 00283624  41 82 00 18 */	beq lbl_802866FC
/* 802866E8 00283628  38 80 00 01 */	li r4, 1
/* 802866EC 0028362C  81 83 00 00 */	lwz r12, 0(r3)
/* 802866F0 00283630  81 8C 00 08 */	lwz r12, 8(r12)
/* 802866F4 00283634  7D 89 03 A6 */	mtctr r12
/* 802866F8 00283638  4E 80 04 21 */	bctrl 
lbl_802866FC:
/* 802866FC 0028363C  7F C3 F3 78 */	mr r3, r30
/* 80286700 00283640  38 80 00 00 */	li r4, 0
/* 80286704 00283644  48 00 24 2D */	bl JStudio_NS_stb_NS_TObject_NS_dtor
/* 80286708 00283648  7F E0 07 35 */	extsh. r0, r31
/* 8028670C 0028364C  40 81 00 0C */	ble lbl_80286718
/* 80286710 00283650  7F C3 F3 78 */	mr r3, r30
/* 80286714 00283654  48 04 86 29 */	bl __dl__FPv
lbl_80286718:
/* 80286718 00283658  7F C3 F3 78 */	mr r3, r30
/* 8028671C 0028365C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286720 00283660  83 C1 00 08 */	lwz r30, 8(r1)
/* 80286724 00283664  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286728 00283668  7C 08 03 A6 */	mtlr r0
/* 8028672C 0028366C  38 21 00 10 */	addi r1, r1, 0x10
/* 80286730 00283670  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_NS_forward_value
JStudio_NS_TObject_NS_forward_value:
/* 80286734 00283674  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286738 00283678  7C 08 02 A6 */	mflr r0
/* 8028673C 0028367C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286740 00283680  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286744 00283684  93 C1 00 08 */	stw r30, 8(r1)
/* 80286748 00283688  7C 65 1B 78 */	mr r5, r3
/* 8028674C 0028368C  7C 9E 23 78 */	mr r30, r4
/* 80286750 00283690  83 E3 00 34 */	lwz r31, 0x34(r3)
/* 80286754 00283694  28 1F 00 00 */	cmplwi r31, 0
/* 80286758 00283698  41 82 00 2C */	beq lbl_80286784
/* 8028675C 0028369C  7F E3 FB 78 */	mr r3, r31
/* 80286760 002836A0  80 85 00 14 */	lwz r4, 0x14(r5)
/* 80286764 002836A4  7F C5 F3 78 */	mr r5, r30
/* 80286768 002836A8  4B FF FD 71 */	bl JStudio_NS_TAdaptor_NS_adaptor_updateVariableValue
/* 8028676C 002836AC  7F E3 FB 78 */	mr r3, r31
/* 80286770 002836B0  7F C4 F3 78 */	mr r4, r30
/* 80286774 002836B4  81 9F 00 00 */	lwz r12, 0(r31)
/* 80286778 002836B8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028677C 002836BC  7D 89 03 A6 */	mtctr r12
/* 80286780 002836C0  4E 80 04 21 */	bctrl 
lbl_80286784:
/* 80286784 002836C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286788 002836C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028678C 002836CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286790 002836D0  7C 08 03 A6 */	mtlr r0
/* 80286794 002836D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80286798 002836D8  4E 80 00 20 */	blr 
/* 8028679C 002836DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802867A0 002836E0  7C 08 02 A6 */	mflr r0
/* 802867A4 002836E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802867A8 002836E8  80 63 00 34 */	lwz r3, 0x34(r3)
/* 802867AC 002836EC  28 03 00 00 */	cmplwi r3, 0
/* 802867B0 002836F0  41 82 00 14 */	beq lbl_802867C4
/* 802867B4 002836F4  81 83 00 00 */	lwz r12, 0(r3)
/* 802867B8 002836F8  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802867BC 002836FC  7D 89 03 A6 */	mtctr r12
/* 802867C0 00283700  4E 80 04 21 */	bctrl 
lbl_802867C4:
/* 802867C4 00283704  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802867C8 00283708  7C 08 03 A6 */	mtlr r0
/* 802867CC 0028370C  38 21 00 10 */	addi r1, r1, 0x10
/* 802867D0 00283710  4E 80 00 20 */	blr 
/* 802867D4 00283714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802867D8 00283718  7C 08 02 A6 */	mflr r0
/* 802867DC 0028371C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802867E0 00283720  80 63 00 34 */	lwz r3, 0x34(r3)
/* 802867E4 00283724  28 03 00 00 */	cmplwi r3, 0
/* 802867E8 00283728  41 82 00 14 */	beq lbl_802867FC
/* 802867EC 0028372C  81 83 00 00 */	lwz r12, 0(r3)
/* 802867F0 00283730  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802867F4 00283734  7D 89 03 A6 */	mtctr r12
/* 802867F8 00283738  4E 80 04 21 */	bctrl 
lbl_802867FC:
/* 802867FC 0028373C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286800 00283740  7C 08 03 A6 */	mtlr r0
/* 80286804 00283744  38 21 00 10 */	addi r1, r1, 0x10
/* 80286808 00283748  4E 80 00 20 */	blr 
/* 8028680C 0028374C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286810 00283750  7C 08 02 A6 */	mflr r0
/* 80286814 00283754  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286818 00283758  4B FF FF 1D */	bl JStudio_NS_TObject_NS_forward_value
/* 8028681C 0028375C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286820 00283760  7C 08 03 A6 */	mtlr r0
/* 80286824 00283764  38 21 00 10 */	addi r1, r1, 0x10
/* 80286828 00283768  4E 80 00 20 */	blr 
/* 8028682C 0028376C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286830 00283770  7C 08 02 A6 */	mflr r0
/* 80286834 00283774  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286838 00283778  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8028683C 0028377C  28 03 00 00 */	cmplwi r3, 0
/* 80286840 00283780  41 82 00 14 */	beq lbl_80286854
/* 80286844 00283784  81 83 00 00 */	lwz r12, 0(r3)
/* 80286848 00283788  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028684C 0028378C  7D 89 03 A6 */	mtctr r12
/* 80286850 00283790  4E 80 04 21 */	bctrl 
lbl_80286854:
/* 80286854 00283794  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286858 00283798  7C 08 03 A6 */	mtlr r0
/* 8028685C 0028379C  38 21 00 10 */	addi r1, r1, 0x10
/* 80286860 002837A0  4E 80 00 20 */	blr 

.global JStudio_NS_TObject
JStudio_NS_TObject:
/* 80286864 002837A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286868 002837A8  7C 08 02 A6 */	mflr r0
/* 8028686C 002837AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286870 002837B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286874 002837B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80286878 002837B8  7C 7E 1B 78 */	mr r30, r3
/* 8028687C 002837BC  7C BF 2B 78 */	mr r31, r5
/* 80286880 002837C0  48 00 22 41 */	bl JStudio_NS_stb_NS_TObject_X1_
/* 80286884 002837C4  3C 60 80 3C */	lis r3, lbl_803C55F0@ha
/* 80286888 002837C8  38 03 55 F0 */	addi r0, r3, lbl_803C55F0@l
/* 8028688C 002837CC  90 1E 00 08 */	stw r0, 8(r30)
/* 80286890 002837D0  93 FE 00 34 */	stw r31, 0x34(r30)
/* 80286894 002837D4  7F C3 F3 78 */	mr r3, r30
/* 80286898 002837D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028689C 002837DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802868A0 002837E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802868A4 002837E4  7C 08 03 A6 */	mtlr r0
/* 802868A8 002837E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802868AC 002837EC  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_actor_NS_dtor
JStudio_NS_TAdaptor_actor_NS_dtor:
/* 802868B0 002837F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802868B4 002837F4  7C 08 02 A6 */	mflr r0
/* 802868B8 002837F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802868BC 002837FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802868C0 00283800  93 C1 00 08 */	stw r30, 8(r1)
/* 802868C4 00283804  7C 7E 1B 79 */	or. r30, r3, r3
/* 802868C8 00283808  7C 9F 23 78 */	mr r31, r4
/* 802868CC 0028380C  41 82 00 28 */	beq lbl_802868F4
/* 802868D0 00283810  3C 80 80 3C */	lis r4, lbl_803C55A0@ha
/* 802868D4 00283814  38 04 55 A0 */	addi r0, r4, lbl_803C55A0@l
/* 802868D8 00283818  90 1E 00 00 */	stw r0, 0(r30)
/* 802868DC 0028381C  38 80 00 00 */	li r4, 0
/* 802868E0 00283820  4B FF F6 F1 */	bl JStudio_NS_TAdaptor_NS_dtor
/* 802868E4 00283824  7F E0 07 35 */	extsh. r0, r31
/* 802868E8 00283828  40 81 00 0C */	ble lbl_802868F4
/* 802868EC 0028382C  7F C3 F3 78 */	mr r3, r30
/* 802868F0 00283830  48 04 84 4D */	bl __dl__FPv
lbl_802868F4:
/* 802868F4 00283834  7F C3 F3 78 */	mr r3, r30
/* 802868F8 00283838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802868FC 0028383C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80286900 00283840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286904 00283844  7C 08 03 A6 */	mtlr r0
/* 80286908 00283848  38 21 00 10 */	addi r1, r1, 0x10
/* 8028690C 0028384C  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_actor
JStudio_NS_TObject_actor:
/* 80286910 00283850  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286914 00283854  7C 08 02 A6 */	mflr r0
/* 80286918 00283858  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028691C 0028385C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286920 00283860  7C 7F 1B 78 */	mr r31, r3
/* 80286924 00283864  4B FF FF 41 */	bl JStudio_NS_TObject
/* 80286928 00283868  3C 60 80 3C */	lis r3, lbl_803C5580@ha
/* 8028692C 0028386C  38 03 55 80 */	addi r0, r3, lbl_803C5580@l
/* 80286930 00283870  90 1F 00 08 */	stw r0, 8(r31)
/* 80286934 00283874  7F E3 FB 78 */	mr r3, r31
/* 80286938 00283878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028693C 0028387C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286940 00283880  7C 08 03 A6 */	mtlr r0
/* 80286944 00283884  38 21 00 10 */	addi r1, r1, 0x10
/* 80286948 00283888  4E 80 00 20 */	blr 
/* 8028694C 0028388C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80286950 00283890  7C 08 02 A6 */	mflr r0
/* 80286954 00283894  90 01 00 34 */	stw r0, 0x34(r1)
/* 80286958 00283898  39 61 00 30 */	addi r11, r1, 0x30
/* 8028695C 0028389C  48 0D B8 81 */	bl _savegpr_29
/* 80286960 002838A0  7C A8 2B 78 */	mr r8, r5
/* 80286964 002838A4  7C C9 33 78 */	mr r9, r6
/* 80286968 002838A8  3C A0 80 3A */	lis r5, lbl_8039AA68@ha
/* 8028696C 002838AC  39 45 AA 68 */	addi r10, r5, lbl_8039AA68@l
/* 80286970 002838B0  3C A0 80 3C */	lis r5, lbl_803C4B00@ha
/* 80286974 002838B4  38 A5 4B 00 */	addi r5, r5, lbl_803C4B00@l
/* 80286978 002838B8  83 E3 00 34 */	lwz r31, 0x34(r3)
/* 8028697C 002838BC  28 1F 00 00 */	cmplwi r31, 0
/* 80286980 002838C0  41 82 03 04 */	beq lbl_80286C84
/* 80286984 002838C4  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80286988 002838C8  54 8B D9 7E */	srwi r11, r4, 5
/* 8028698C 002838CC  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 80286990 002838D0  3C 60 80 3A */	lis r3, lbl_803A2180@ha
/* 80286994 002838D4  38 C3 21 80 */	addi r6, r3, lbl_803A2180@l
/* 80286998 002838D8  80 86 00 00 */	lwz r4, 0(r6)
/* 8028699C 002838DC  80 66 00 04 */	lwz r3, 4(r6)
/* 802869A0 002838E0  90 81 00 08 */	stw r4, 8(r1)
/* 802869A4 002838E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802869A8 002838E8  80 66 00 08 */	lwz r3, 8(r6)
/* 802869AC 002838EC  90 61 00 10 */	stw r3, 0x10(r1)
/* 802869B0 002838F0  38 8B FF F7 */	addi r4, r11, -9
/* 802869B4 002838F4  28 04 00 48 */	cmplwi r4, 0x48
/* 802869B8 002838F8  41 81 02 CC */	bgt lbl_80286C84
/* 802869BC 002838FC  3C 60 80 3C */	lis r3, lbl_803C4C78@ha
/* 802869C0 00283900  38 63 4C 78 */	addi r3, r3, lbl_803C4C78@l
/* 802869C4 00283904  54 84 10 3A */	slwi r4, r4, 2
/* 802869C8 00283908  7C 63 20 2E */	lwzx r3, r3, r4
/* 802869CC 0028390C  7C 69 03 A6 */	mtctr r3
/* 802869D0 00283910  4E 80 04 20 */	bctr 
/* 802869D4 00283914  80 65 00 E8 */	lwz r3, 0xe8(r5)
/* 802869D8 00283918  80 05 00 EC */	lwz r0, 0xec(r5)
/* 802869DC 0028391C  90 61 00 08 */	stw r3, 8(r1)
/* 802869E0 00283920  90 01 00 0C */	stw r0, 0xc(r1)
/* 802869E4 00283924  80 05 00 F0 */	lwz r0, 0xf0(r5)
/* 802869E8 00283928  90 01 00 10 */	stw r0, 0x10(r1)
/* 802869EC 0028392C  48 00 02 7C */	b lbl_80286C68
/* 802869F0 00283930  80 65 00 F4 */	lwz r3, 0xf4(r5)
/* 802869F4 00283934  80 05 00 F8 */	lwz r0, 0xf8(r5)
/* 802869F8 00283938  90 61 00 08 */	stw r3, 8(r1)
/* 802869FC 0028393C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286A00 00283940  80 05 00 FC */	lwz r0, 0xfc(r5)
/* 80286A04 00283944  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286A08 00283948  48 00 02 60 */	b lbl_80286C68
/* 80286A0C 0028394C  80 65 01 00 */	lwz r3, 0x100(r5)
/* 80286A10 00283950  80 05 01 04 */	lwz r0, 0x104(r5)
/* 80286A14 00283954  90 61 00 08 */	stw r3, 8(r1)
/* 80286A18 00283958  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286A1C 0028395C  80 05 01 08 */	lwz r0, 0x108(r5)
/* 80286A20 00283960  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286A24 00283964  48 00 02 44 */	b lbl_80286C68
/* 80286A28 00283968  80 65 01 0C */	lwz r3, 0x10c(r5)
/* 80286A2C 0028396C  80 05 01 10 */	lwz r0, 0x110(r5)
/* 80286A30 00283970  90 61 00 08 */	stw r3, 8(r1)
/* 80286A34 00283974  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286A38 00283978  80 05 01 14 */	lwz r0, 0x114(r5)
/* 80286A3C 0028397C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286A40 00283980  48 00 02 28 */	b lbl_80286C68
/* 80286A44 00283984  80 65 01 18 */	lwz r3, 0x118(r5)
/* 80286A48 00283988  80 05 01 1C */	lwz r0, 0x11c(r5)
/* 80286A4C 0028398C  90 61 00 08 */	stw r3, 8(r1)
/* 80286A50 00283990  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286A54 00283994  80 05 01 20 */	lwz r0, 0x120(r5)
/* 80286A58 00283998  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286A5C 0028399C  48 00 02 0C */	b lbl_80286C68
/* 80286A60 002839A0  80 65 01 24 */	lwz r3, 0x124(r5)
/* 80286A64 002839A4  80 05 01 28 */	lwz r0, 0x128(r5)
/* 80286A68 002839A8  90 61 00 08 */	stw r3, 8(r1)
/* 80286A6C 002839AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286A70 002839B0  80 05 01 2C */	lwz r0, 0x12c(r5)
/* 80286A74 002839B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286A78 002839B8  48 00 01 F0 */	b lbl_80286C68
/* 80286A7C 002839BC  80 65 01 30 */	lwz r3, 0x130(r5)
/* 80286A80 002839C0  80 05 01 34 */	lwz r0, 0x134(r5)
/* 80286A84 002839C4  90 61 00 08 */	stw r3, 8(r1)
/* 80286A88 002839C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286A8C 002839CC  80 05 01 38 */	lwz r0, 0x138(r5)
/* 80286A90 002839D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286A94 002839D4  48 00 01 D4 */	b lbl_80286C68
/* 80286A98 002839D8  80 85 01 3C */	lwz r4, 0x13c(r5)
/* 80286A9C 002839DC  80 65 01 40 */	lwz r3, 0x140(r5)
/* 80286AA0 002839E0  90 81 00 08 */	stw r4, 8(r1)
/* 80286AA4 002839E4  90 61 00 0C */	stw r3, 0xc(r1)
/* 80286AA8 002839E8  80 65 01 44 */	lwz r3, 0x144(r5)
/* 80286AAC 002839EC  90 61 00 10 */	stw r3, 0x10(r1)
/* 80286AB0 002839F0  3B C0 00 0C */	li r30, 0xc
/* 80286AB4 002839F4  3C 60 80 43 */	lis r3, lbl_8043101C@ha
/* 80286AB8 002839F8  38 63 10 1C */	addi r3, r3, lbl_8043101C@l
/* 80286ABC 002839FC  7C 7D 1B 78 */	mr r29, r3
/* 80286AC0 00283A00  48 00 01 04 */	b lbl_80286BC4
/* 80286AC4 00283A04  80 65 01 48 */	lwz r3, 0x148(r5)
/* 80286AC8 00283A08  80 05 01 4C */	lwz r0, 0x14c(r5)
/* 80286ACC 00283A0C  90 61 00 08 */	stw r3, 8(r1)
/* 80286AD0 00283A10  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286AD4 00283A14  80 05 01 50 */	lwz r0, 0x150(r5)
/* 80286AD8 00283A18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286ADC 00283A1C  48 00 01 8C */	b lbl_80286C68
/* 80286AE0 00283A20  80 65 01 54 */	lwz r3, 0x154(r5)
/* 80286AE4 00283A24  80 05 01 58 */	lwz r0, 0x158(r5)
/* 80286AE8 00283A28  90 61 00 08 */	stw r3, 8(r1)
/* 80286AEC 00283A2C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286AF0 00283A30  80 05 01 5C */	lwz r0, 0x15c(r5)
/* 80286AF4 00283A34  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286AF8 00283A38  48 00 01 70 */	b lbl_80286C68
/* 80286AFC 00283A3C  80 65 01 60 */	lwz r3, 0x160(r5)
/* 80286B00 00283A40  80 05 01 64 */	lwz r0, 0x164(r5)
/* 80286B04 00283A44  90 61 00 08 */	stw r3, 8(r1)
/* 80286B08 00283A48  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286B0C 00283A4C  80 05 01 68 */	lwz r0, 0x168(r5)
/* 80286B10 00283A50  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286B14 00283A54  48 00 01 54 */	b lbl_80286C68
/* 80286B18 00283A58  80 85 01 6C */	lwz r4, 0x16c(r5)
/* 80286B1C 00283A5C  80 65 01 70 */	lwz r3, 0x170(r5)
/* 80286B20 00283A60  90 81 00 08 */	stw r4, 8(r1)
/* 80286B24 00283A64  90 61 00 0C */	stw r3, 0xc(r1)
/* 80286B28 00283A68  80 65 01 74 */	lwz r3, 0x174(r5)
/* 80286B2C 00283A6C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80286B30 00283A70  3B C0 00 0D */	li r30, 0xd
/* 80286B34 00283A74  3C 60 80 43 */	lis r3, lbl_80431038@ha
/* 80286B38 00283A78  38 63 10 38 */	addi r3, r3, lbl_80431038@l
/* 80286B3C 00283A7C  7C 7D 1B 78 */	mr r29, r3
/* 80286B40 00283A80  48 00 00 84 */	b lbl_80286BC4
/* 80286B44 00283A84  38 A0 00 00 */	li r5, 0
/* 80286B48 00283A88  48 00 00 F4 */	b lbl_80286C3C
/* 80286B4C 00283A8C  38 A0 00 01 */	li r5, 1
/* 80286B50 00283A90  48 00 00 EC */	b lbl_80286C3C
/* 80286B54 00283A94  38 A0 00 03 */	li r5, 3
/* 80286B58 00283A98  48 00 00 E4 */	b lbl_80286C3C
/* 80286B5C 00283A9C  38 A0 00 04 */	li r5, 4
/* 80286B60 00283AA0  48 00 00 DC */	b lbl_80286C3C
/* 80286B64 00283AA4  38 A0 00 05 */	li r5, 5
/* 80286B68 00283AA8  48 00 00 D4 */	b lbl_80286C3C
/* 80286B6C 00283AAC  38 A0 00 06 */	li r5, 6
/* 80286B70 00283AB0  48 00 00 CC */	b lbl_80286C3C
/* 80286B74 00283AB4  38 A0 00 07 */	li r5, 7
/* 80286B78 00283AB8  48 00 00 C4 */	b lbl_80286C3C
/* 80286B7C 00283ABC  38 A0 00 08 */	li r5, 8
/* 80286B80 00283AC0  48 00 00 BC */	b lbl_80286C3C
/* 80286B84 00283AC4  38 A0 00 09 */	li r5, 9
/* 80286B88 00283AC8  48 00 00 B4 */	b lbl_80286C3C
/* 80286B8C 00283ACC  38 A0 00 0A */	li r5, 0xa
/* 80286B90 00283AD0  48 00 00 AC */	b lbl_80286C3C
/* 80286B94 00283AD4  38 A0 00 0B */	li r5, 0xb
/* 80286B98 00283AD8  48 00 00 A4 */	b lbl_80286C3C
/* 80286B9C 00283ADC  38 AA 00 00 */	addi r5, r10, 0
/* 80286BA0 00283AE0  38 C0 00 03 */	li r6, 3
/* 80286BA4 00283AE4  48 00 00 B4 */	b lbl_80286C58
/* 80286BA8 00283AE8  38 AA 00 0C */	addi r5, r10, 0xc
/* 80286BAC 00283AEC  38 C0 00 03 */	li r6, 3
/* 80286BB0 00283AF0  48 00 00 A8 */	b lbl_80286C58
/* 80286BB4 00283AF4  38 AA 00 18 */	addi r5, r10, 0x18
/* 80286BB8 00283AF8  38 C0 00 03 */	li r6, 3
/* 80286BBC 00283AFC  48 00 00 9C */	b lbl_80286C58
/* 80286BC0 00283B00  48 00 00 C4 */	b lbl_80286C84
lbl_80286BC4:
/* 80286BC4 00283B04  2C 07 00 13 */	cmpwi r7, 0x13
/* 80286BC8 00283B08  40 80 00 54 */	bge lbl_80286C1C
/* 80286BCC 00283B0C  2C 07 00 10 */	cmpwi r7, 0x10
/* 80286BD0 00283B10  40 80 00 08 */	bge lbl_80286BD8
/* 80286BD4 00283B14  48 00 00 48 */	b lbl_80286C1C
lbl_80286BD8:
/* 80286BD8 00283B18  7F E3 FB 78 */	mr r3, r31
/* 80286BDC 00283B1C  7C 04 03 78 */	mr r4, r0
/* 80286BE0 00283B20  7F C5 F3 78 */	mr r5, r30
/* 80286BE4 00283B24  7C E6 3B 78 */	mr r6, r7
/* 80286BE8 00283B28  7D 07 43 78 */	mr r7, r8
/* 80286BEC 00283B2C  7D 28 4B 78 */	mr r8, r9
/* 80286BF0 00283B30  4B FF F4 3D */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 80286BF4 00283B34  80 7F 00 08 */	lwz r3, 8(r31)
/* 80286BF8 00283B38  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 80286BFC 00283B3C  7C 63 02 14 */	add r3, r3, r0
/* 80286C00 00283B40  28 1D 00 00 */	cmplwi r29, 0
/* 80286C04 00283B44  41 82 00 0C */	beq lbl_80286C10
/* 80286C08 00283B48  7F A0 EB 78 */	mr r0, r29
/* 80286C0C 00283B4C  48 00 00 08 */	b lbl_80286C14
lbl_80286C10:
/* 80286C10 00283B50  38 0D 8C 70 */	addi r0, r13, lbl_804511F0-_SDA_BASE_
lbl_80286C14:
/* 80286C14 00283B54  90 03 00 10 */	stw r0, 0x10(r3)
/* 80286C18 00283B58  48 00 00 6C */	b lbl_80286C84
lbl_80286C1C:
/* 80286C1C 00283B5C  7F E3 FB 78 */	mr r3, r31
/* 80286C20 00283B60  7C E4 3B 78 */	mr r4, r7
/* 80286C24 00283B64  7D 05 43 78 */	mr r5, r8
/* 80286C28 00283B68  7D 26 4B 78 */	mr r6, r9
/* 80286C2C 00283B6C  39 81 00 08 */	addi r12, r1, 8
/* 80286C30 00283B70  48 0D B4 55 */	bl func_80362084
/* 80286C34 00283B74  60 00 00 00 */	nop 
/* 80286C38 00283B78  48 00 00 4C */	b lbl_80286C84
lbl_80286C3C:
/* 80286C3C 00283B7C  7F E3 FB 78 */	mr r3, r31
/* 80286C40 00283B80  7C 04 03 78 */	mr r4, r0
/* 80286C44 00283B84  7C E6 3B 78 */	mr r6, r7
/* 80286C48 00283B88  7D 07 43 78 */	mr r7, r8
/* 80286C4C 00283B8C  7D 28 4B 78 */	mr r8, r9
/* 80286C50 00283B90  4B FF F3 DD */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 80286C54 00283B94  48 00 00 30 */	b lbl_80286C84
lbl_80286C58:
/* 80286C58 00283B98  7F E3 FB 78 */	mr r3, r31
/* 80286C5C 00283B9C  7C 04 03 78 */	mr r4, r0
/* 80286C60 00283BA0  4B FF F4 6D */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_n
/* 80286C64 00283BA4  48 00 00 20 */	b lbl_80286C84
lbl_80286C68:
/* 80286C68 00283BA8  7F E3 FB 78 */	mr r3, r31
/* 80286C6C 00283BAC  7C E4 3B 78 */	mr r4, r7
/* 80286C70 00283BB0  7D 05 43 78 */	mr r5, r8
/* 80286C74 00283BB4  7D 26 4B 78 */	mr r6, r9
/* 80286C78 00283BB8  39 81 00 08 */	addi r12, r1, 8
/* 80286C7C 00283BBC  48 0D B4 09 */	bl func_80362084
/* 80286C80 00283BC0  60 00 00 00 */	nop 
lbl_80286C84:
/* 80286C84 00283BC4  39 61 00 30 */	addi r11, r1, 0x30
/* 80286C88 00283BC8  48 0D B5 A1 */	bl _restgpr_29
/* 80286C8C 00283BCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80286C90 00283BD0  7C 08 03 A6 */	mtlr r0
/* 80286C94 00283BD4  38 21 00 30 */	addi r1, r1, 0x30
/* 80286C98 00283BD8  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_ambientLight_NS_dtor
JStudio_NS_TAdaptor_ambientLight_NS_dtor:
/* 80286C9C 00283BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286CA0 00283BE0  7C 08 02 A6 */	mflr r0
/* 80286CA4 00283BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286CA8 00283BE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286CAC 00283BEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80286CB0 00283BF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80286CB4 00283BF4  7C 9F 23 78 */	mr r31, r4
/* 80286CB8 00283BF8  41 82 00 28 */	beq lbl_80286CE0
/* 80286CBC 00283BFC  3C 80 80 3C */	lis r4, lbl_803C5560@ha
/* 80286CC0 00283C00  38 04 55 60 */	addi r0, r4, lbl_803C5560@l
/* 80286CC4 00283C04  90 1E 00 00 */	stw r0, 0(r30)
/* 80286CC8 00283C08  38 80 00 00 */	li r4, 0
/* 80286CCC 00283C0C  4B FF F3 05 */	bl JStudio_NS_TAdaptor_NS_dtor
/* 80286CD0 00283C10  7F E0 07 35 */	extsh. r0, r31
/* 80286CD4 00283C14  40 81 00 0C */	ble lbl_80286CE0
/* 80286CD8 00283C18  7F C3 F3 78 */	mr r3, r30
/* 80286CDC 00283C1C  48 04 80 61 */	bl __dl__FPv
lbl_80286CE0:
/* 80286CE0 00283C20  7F C3 F3 78 */	mr r3, r30
/* 80286CE4 00283C24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286CE8 00283C28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80286CEC 00283C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286CF0 00283C30  7C 08 03 A6 */	mtlr r0
/* 80286CF4 00283C34  38 21 00 10 */	addi r1, r1, 0x10
/* 80286CF8 00283C38  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_ambientLight
JStudio_NS_TObject_ambientLight:
/* 80286CFC 00283C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286D00 00283C40  7C 08 02 A6 */	mflr r0
/* 80286D04 00283C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286D08 00283C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286D0C 00283C4C  7C 7F 1B 78 */	mr r31, r3
/* 80286D10 00283C50  4B FF FB 55 */	bl JStudio_NS_TObject
/* 80286D14 00283C54  3C 60 80 3C */	lis r3, lbl_803C5540@ha
/* 80286D18 00283C58  38 03 55 40 */	addi r0, r3, lbl_803C5540@l
/* 80286D1C 00283C5C  90 1F 00 08 */	stw r0, 8(r31)
/* 80286D20 00283C60  7F E3 FB 78 */	mr r3, r31
/* 80286D24 00283C64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286D28 00283C68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286D2C 00283C6C  7C 08 03 A6 */	mtlr r0
/* 80286D30 00283C70  38 21 00 10 */	addi r1, r1, 0x10
/* 80286D34 00283C74  4E 80 00 20 */	blr 
/* 80286D38 00283C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286D3C 00283C7C  7C 08 02 A6 */	mflr r0
/* 80286D40 00283C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286D44 00283C84  7C A8 2B 78 */	mr r8, r5
/* 80286D48 00283C88  7C C9 33 78 */	mr r9, r6
/* 80286D4C 00283C8C  81 43 00 34 */	lwz r10, 0x34(r3)
/* 80286D50 00283C90  28 0A 00 00 */	cmplwi r10, 0
/* 80286D54 00283C94  41 82 00 B8 */	beq lbl_80286E0C
/* 80286D58 00283C98  81 63 00 14 */	lwz r11, 0x14(r3)
/* 80286D5C 00283C9C  54 80 D9 7E */	srwi r0, r4, 5
/* 80286D60 00283CA0  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 80286D64 00283CA4  2C 00 00 20 */	cmpwi r0, 0x20
/* 80286D68 00283CA8  41 82 00 48 */	beq lbl_80286DB0
/* 80286D6C 00283CAC  40 80 00 1C */	bge lbl_80286D88
/* 80286D70 00283CB0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80286D74 00283CB4  41 82 00 2C */	beq lbl_80286DA0
/* 80286D78 00283CB8  40 80 00 30 */	bge lbl_80286DA8
/* 80286D7C 00283CBC  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80286D80 00283CC0  40 80 00 18 */	bge lbl_80286D98
/* 80286D84 00283CC4  48 00 00 88 */	b lbl_80286E0C
lbl_80286D88:
/* 80286D88 00283CC8  2C 00 00 22 */	cmpwi r0, 0x22
/* 80286D8C 00283CCC  41 82 00 40 */	beq lbl_80286DCC
/* 80286D90 00283CD0  40 80 00 7C */	bge lbl_80286E0C
/* 80286D94 00283CD4  48 00 00 24 */	b lbl_80286DB8
lbl_80286D98:
/* 80286D98 00283CD8  38 A0 00 00 */	li r5, 0
/* 80286D9C 00283CDC  48 00 00 48 */	b lbl_80286DE4
lbl_80286DA0:
/* 80286DA0 00283CE0  38 A0 00 01 */	li r5, 1
/* 80286DA4 00283CE4  48 00 00 40 */	b lbl_80286DE4
lbl_80286DA8:
/* 80286DA8 00283CE8  38 A0 00 02 */	li r5, 2
/* 80286DAC 00283CEC  48 00 00 38 */	b lbl_80286DE4
lbl_80286DB0:
/* 80286DB0 00283CF0  38 A0 00 03 */	li r5, 3
/* 80286DB4 00283CF4  48 00 00 30 */	b lbl_80286DE4
lbl_80286DB8:
/* 80286DB8 00283CF8  3C 60 80 3A */	lis r3, lbl_8039AA8C@ha
/* 80286DBC 00283CFC  38 03 AA 8C */	addi r0, r3, lbl_8039AA8C@l
/* 80286DC0 00283D00  7C 05 03 78 */	mr r5, r0
/* 80286DC4 00283D04  38 C0 00 03 */	li r6, 3
/* 80286DC8 00283D08  48 00 00 38 */	b lbl_80286E00
lbl_80286DCC:
/* 80286DCC 00283D0C  3C 60 80 3A */	lis r3, lbl_8039AA98@ha
/* 80286DD0 00283D10  38 03 AA 98 */	addi r0, r3, lbl_8039AA98@l
/* 80286DD4 00283D14  7C 05 03 78 */	mr r5, r0
/* 80286DD8 00283D18  38 C0 00 04 */	li r6, 4
/* 80286DDC 00283D1C  48 00 00 24 */	b lbl_80286E00
/* 80286DE0 00283D20  48 00 00 2C */	b lbl_80286E0C
lbl_80286DE4:
/* 80286DE4 00283D24  7D 43 53 78 */	mr r3, r10
/* 80286DE8 00283D28  7D 64 5B 78 */	mr r4, r11
/* 80286DEC 00283D2C  7C E6 3B 78 */	mr r6, r7
/* 80286DF0 00283D30  7D 07 43 78 */	mr r7, r8
/* 80286DF4 00283D34  7D 28 4B 78 */	mr r8, r9
/* 80286DF8 00283D38  4B FF F2 35 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 80286DFC 00283D3C  48 00 00 10 */	b lbl_80286E0C
lbl_80286E00:
/* 80286E00 00283D40  7D 43 53 78 */	mr r3, r10
/* 80286E04 00283D44  7D 64 5B 78 */	mr r4, r11
/* 80286E08 00283D48  4B FF F2 C5 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_n
lbl_80286E0C:
/* 80286E0C 00283D4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286E10 00283D50  7C 08 03 A6 */	mtlr r0
/* 80286E14 00283D54  38 21 00 10 */	addi r1, r1, 0x10
/* 80286E18 00283D58  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_camera_NS_dtor
JStudio_NS_TAdaptor_camera_NS_dtor:
/* 80286E1C 00283D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286E20 00283D60  7C 08 02 A6 */	mflr r0
/* 80286E24 00283D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286E28 00283D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286E2C 00283D6C  93 C1 00 08 */	stw r30, 8(r1)
/* 80286E30 00283D70  7C 7E 1B 79 */	or. r30, r3, r3
/* 80286E34 00283D74  7C 9F 23 78 */	mr r31, r4
/* 80286E38 00283D78  41 82 00 28 */	beq lbl_80286E60
/* 80286E3C 00283D7C  3C 80 80 3C */	lis r4, lbl_803C5504@ha
/* 80286E40 00283D80  38 04 55 04 */	addi r0, r4, lbl_803C5504@l
/* 80286E44 00283D84  90 1E 00 00 */	stw r0, 0(r30)
/* 80286E48 00283D88  38 80 00 00 */	li r4, 0
/* 80286E4C 00283D8C  4B FF F1 85 */	bl JStudio_NS_TAdaptor_NS_dtor
/* 80286E50 00283D90  7F E0 07 35 */	extsh. r0, r31
/* 80286E54 00283D94  40 81 00 0C */	ble lbl_80286E60
/* 80286E58 00283D98  7F C3 F3 78 */	mr r3, r30
/* 80286E5C 00283D9C  48 04 7E E1 */	bl __dl__FPv
lbl_80286E60:
/* 80286E60 00283DA0  7F C3 F3 78 */	mr r3, r30
/* 80286E64 00283DA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286E68 00283DA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80286E6C 00283DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286E70 00283DB0  7C 08 03 A6 */	mtlr r0
/* 80286E74 00283DB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80286E78 00283DB8  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_camera
JStudio_NS_TObject_camera:
/* 80286E7C 00283DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286E80 00283DC0  7C 08 02 A6 */	mflr r0
/* 80286E84 00283DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286E88 00283DC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286E8C 00283DCC  7C 7F 1B 78 */	mr r31, r3
/* 80286E90 00283DD0  4B FF F9 D5 */	bl JStudio_NS_TObject
/* 80286E94 00283DD4  3C 60 80 3C */	lis r3, lbl_803C54E4@ha
/* 80286E98 00283DD8  38 03 54 E4 */	addi r0, r3, lbl_803C54E4@l
/* 80286E9C 00283DDC  90 1F 00 08 */	stw r0, 8(r31)
/* 80286EA0 00283DE0  7F E3 FB 78 */	mr r3, r31
/* 80286EA4 00283DE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286EA8 00283DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286EAC 00283DEC  7C 08 03 A6 */	mtlr r0
/* 80286EB0 00283DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80286EB4 00283DF4  4E 80 00 20 */	blr 
/* 80286EB8 00283DF8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80286EBC 00283DFC  7C 08 02 A6 */	mflr r0
/* 80286EC0 00283E00  90 01 00 34 */	stw r0, 0x34(r1)
/* 80286EC4 00283E04  39 61 00 30 */	addi r11, r1, 0x30
/* 80286EC8 00283E08  48 0D B3 15 */	bl _savegpr_29
/* 80286ECC 00283E0C  7C A8 2B 78 */	mr r8, r5
/* 80286ED0 00283E10  7C C9 33 78 */	mr r9, r6
/* 80286ED4 00283E14  3C A0 80 3C */	lis r5, lbl_803C4B00@ha
/* 80286ED8 00283E18  38 A5 4B 00 */	addi r5, r5, lbl_803C4B00@l
/* 80286EDC 00283E1C  83 E3 00 34 */	lwz r31, 0x34(r3)
/* 80286EE0 00283E20  28 1F 00 00 */	cmplwi r31, 0
/* 80286EE4 00283E24  41 82 02 80 */	beq lbl_80287164
/* 80286EE8 00283E28  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80286EEC 00283E2C  54 8A D9 7E */	srwi r10, r4, 5
/* 80286EF0 00283E30  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 80286EF4 00283E34  3C 60 80 3A */	lis r3, lbl_803A2180@ha
/* 80286EF8 00283E38  38 C3 21 80 */	addi r6, r3, lbl_803A2180@l
/* 80286EFC 00283E3C  80 86 00 00 */	lwz r4, 0(r6)
/* 80286F00 00283E40  80 66 00 04 */	lwz r3, 4(r6)
/* 80286F04 00283E44  90 81 00 08 */	stw r4, 8(r1)
/* 80286F08 00283E48  90 61 00 0C */	stw r3, 0xc(r1)
/* 80286F0C 00283E4C  80 66 00 08 */	lwz r3, 8(r6)
/* 80286F10 00283E50  90 61 00 10 */	stw r3, 0x10(r1)
/* 80286F14 00283E54  38 8A FF EB */	addi r4, r10, -21
/* 80286F18 00283E58  28 04 00 3F */	cmplwi r4, 0x3f
/* 80286F1C 00283E5C  41 81 02 48 */	bgt lbl_80287164
/* 80286F20 00283E60  3C 60 80 3C */	lis r3, lbl_803C4DF0@ha
/* 80286F24 00283E64  38 63 4D F0 */	addi r3, r3, lbl_803C4DF0@l
/* 80286F28 00283E68  54 84 10 3A */	slwi r4, r4, 2
/* 80286F2C 00283E6C  7C 63 20 2E */	lwzx r3, r3, r4
/* 80286F30 00283E70  7C 69 03 A6 */	mtctr r3
/* 80286F34 00283E74  4E 80 04 20 */	bctr 
/* 80286F38 00283E78  80 65 02 9C */	lwz r3, 0x29c(r5)
/* 80286F3C 00283E7C  80 05 02 A0 */	lwz r0, 0x2a0(r5)
/* 80286F40 00283E80  90 61 00 08 */	stw r3, 8(r1)
/* 80286F44 00283E84  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286F48 00283E88  80 05 02 A4 */	lwz r0, 0x2a4(r5)
/* 80286F4C 00283E8C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286F50 00283E90  48 00 01 F8 */	b lbl_80287148
/* 80286F54 00283E94  80 65 02 A8 */	lwz r3, 0x2a8(r5)
/* 80286F58 00283E98  80 05 02 AC */	lwz r0, 0x2ac(r5)
/* 80286F5C 00283E9C  90 61 00 08 */	stw r3, 8(r1)
/* 80286F60 00283EA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286F64 00283EA4  80 05 02 B0 */	lwz r0, 0x2b0(r5)
/* 80286F68 00283EA8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286F6C 00283EAC  48 00 01 DC */	b lbl_80287148
/* 80286F70 00283EB0  80 85 02 B4 */	lwz r4, 0x2b4(r5)
/* 80286F74 00283EB4  80 65 02 B8 */	lwz r3, 0x2b8(r5)
/* 80286F78 00283EB8  90 81 00 08 */	stw r4, 8(r1)
/* 80286F7C 00283EBC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80286F80 00283EC0  80 65 02 BC */	lwz r3, 0x2bc(r5)
/* 80286F84 00283EC4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80286F88 00283EC8  3B C0 00 0A */	li r30, 0xa
/* 80286F8C 00283ECC  3C 60 80 43 */	lis r3, lbl_80431054@ha
/* 80286F90 00283ED0  38 63 10 54 */	addi r3, r3, lbl_80431054@l
/* 80286F94 00283ED4  7C 7D 1B 78 */	mr r29, r3
/* 80286F98 00283ED8  48 00 01 0C */	b lbl_802870A4
/* 80286F9C 00283EDC  80 65 02 C0 */	lwz r3, 0x2c0(r5)
/* 80286FA0 00283EE0  80 05 02 C4 */	lwz r0, 0x2c4(r5)
/* 80286FA4 00283EE4  90 61 00 08 */	stw r3, 8(r1)
/* 80286FA8 00283EE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286FAC 00283EEC  80 05 02 C8 */	lwz r0, 0x2c8(r5)
/* 80286FB0 00283EF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286FB4 00283EF4  48 00 01 94 */	b lbl_80287148
/* 80286FB8 00283EF8  80 65 02 CC */	lwz r3, 0x2cc(r5)
/* 80286FBC 00283EFC  80 05 02 D0 */	lwz r0, 0x2d0(r5)
/* 80286FC0 00283F00  90 61 00 08 */	stw r3, 8(r1)
/* 80286FC4 00283F04  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286FC8 00283F08  80 05 02 D4 */	lwz r0, 0x2d4(r5)
/* 80286FCC 00283F0C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286FD0 00283F10  48 00 01 78 */	b lbl_80287148
/* 80286FD4 00283F14  80 65 02 D8 */	lwz r3, 0x2d8(r5)
/* 80286FD8 00283F18  80 05 02 DC */	lwz r0, 0x2dc(r5)
/* 80286FDC 00283F1C  90 61 00 08 */	stw r3, 8(r1)
/* 80286FE0 00283F20  90 01 00 0C */	stw r0, 0xc(r1)
/* 80286FE4 00283F24  80 05 02 E0 */	lwz r0, 0x2e0(r5)
/* 80286FE8 00283F28  90 01 00 10 */	stw r0, 0x10(r1)
/* 80286FEC 00283F2C  48 00 01 5C */	b lbl_80287148
/* 80286FF0 00283F30  80 85 02 E4 */	lwz r4, 0x2e4(r5)
/* 80286FF4 00283F34  80 65 02 E8 */	lwz r3, 0x2e8(r5)
/* 80286FF8 00283F38  90 81 00 08 */	stw r4, 8(r1)
/* 80286FFC 00283F3C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287000 00283F40  80 65 02 EC */	lwz r3, 0x2ec(r5)
/* 80287004 00283F44  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287008 00283F48  3B C0 00 0B */	li r30, 0xb
/* 8028700C 00283F4C  3C 60 80 43 */	lis r3, lbl_80431070@ha
/* 80287010 00283F50  38 63 10 70 */	addi r3, r3, lbl_80431070@l
/* 80287014 00283F54  7C 7D 1B 78 */	mr r29, r3
/* 80287018 00283F58  48 00 00 8C */	b lbl_802870A4
/* 8028701C 00283F5C  38 A0 00 00 */	li r5, 0
/* 80287020 00283F60  48 00 00 FC */	b lbl_8028711C
/* 80287024 00283F64  38 A0 00 01 */	li r5, 1
/* 80287028 00283F68  48 00 00 F4 */	b lbl_8028711C
/* 8028702C 00283F6C  38 A0 00 02 */	li r5, 2
/* 80287030 00283F70  48 00 00 EC */	b lbl_8028711C
/* 80287034 00283F74  38 A0 00 03 */	li r5, 3
/* 80287038 00283F78  48 00 00 E4 */	b lbl_8028711C
/* 8028703C 00283F7C  38 A0 00 04 */	li r5, 4
/* 80287040 00283F80  48 00 00 DC */	b lbl_8028711C
/* 80287044 00283F84  38 A0 00 05 */	li r5, 5
/* 80287048 00283F88  48 00 00 D4 */	b lbl_8028711C
/* 8028704C 00283F8C  38 A0 00 06 */	li r5, 6
/* 80287050 00283F90  48 00 00 CC */	b lbl_8028711C
/* 80287054 00283F94  38 A0 00 07 */	li r5, 7
/* 80287058 00283F98  48 00 00 C4 */	b lbl_8028711C
/* 8028705C 00283F9C  38 A0 00 08 */	li r5, 8
/* 80287060 00283FA0  48 00 00 BC */	b lbl_8028711C
/* 80287064 00283FA4  38 A0 00 09 */	li r5, 9
/* 80287068 00283FA8  48 00 00 B4 */	b lbl_8028711C
/* 8028706C 00283FAC  3C 60 80 3A */	lis r3, lbl_8039AAA8@ha
/* 80287070 00283FB0  38 63 AA A8 */	addi r3, r3, lbl_8039AAA8@l
/* 80287074 00283FB4  7C 65 1B 78 */	mr r5, r3
/* 80287078 00283FB8  38 C0 00 03 */	li r6, 3
/* 8028707C 00283FBC  48 00 00 BC */	b lbl_80287138
/* 80287080 00283FC0  3C 60 80 3A */	lis r3, lbl_8039AAB4@ha
/* 80287084 00283FC4  38 63 AA B4 */	addi r3, r3, lbl_8039AAB4@l
/* 80287088 00283FC8  7C 65 1B 78 */	mr r5, r3
/* 8028708C 00283FCC  38 C0 00 03 */	li r6, 3
/* 80287090 00283FD0  48 00 00 A8 */	b lbl_80287138
/* 80287094 00283FD4  38 A2 BA B0 */	addi r5, r2, lbl_804554B0-_SDA2_BASE_
/* 80287098 00283FD8  38 C0 00 02 */	li r6, 2
/* 8028709C 00283FDC  48 00 00 9C */	b lbl_80287138
/* 802870A0 00283FE0  48 00 00 C4 */	b lbl_80287164
lbl_802870A4:
/* 802870A4 00283FE4  2C 07 00 13 */	cmpwi r7, 0x13
/* 802870A8 00283FE8  40 80 00 54 */	bge lbl_802870FC
/* 802870AC 00283FEC  2C 07 00 10 */	cmpwi r7, 0x10
/* 802870B0 00283FF0  40 80 00 08 */	bge lbl_802870B8
/* 802870B4 00283FF4  48 00 00 48 */	b lbl_802870FC
lbl_802870B8:
/* 802870B8 00283FF8  7F E3 FB 78 */	mr r3, r31
/* 802870BC 00283FFC  7C 04 03 78 */	mr r4, r0
/* 802870C0 00284000  7F C5 F3 78 */	mr r5, r30
/* 802870C4 00284004  7C E6 3B 78 */	mr r6, r7
/* 802870C8 00284008  7D 07 43 78 */	mr r7, r8
/* 802870CC 0028400C  7D 28 4B 78 */	mr r8, r9
/* 802870D0 00284010  4B FF EF 5D */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 802870D4 00284014  80 7F 00 08 */	lwz r3, 8(r31)
/* 802870D8 00284018  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 802870DC 0028401C  7C 63 02 14 */	add r3, r3, r0
/* 802870E0 00284020  28 1D 00 00 */	cmplwi r29, 0
/* 802870E4 00284024  41 82 00 0C */	beq lbl_802870F0
/* 802870E8 00284028  7F A0 EB 78 */	mr r0, r29
/* 802870EC 0028402C  48 00 00 08 */	b lbl_802870F4
lbl_802870F0:
/* 802870F0 00284030  38 0D 8C 70 */	addi r0, r13, lbl_804511F0-_SDA_BASE_
lbl_802870F4:
/* 802870F4 00284034  90 03 00 10 */	stw r0, 0x10(r3)
/* 802870F8 00284038  48 00 00 6C */	b lbl_80287164
lbl_802870FC:
/* 802870FC 0028403C  7F E3 FB 78 */	mr r3, r31
/* 80287100 00284040  7C E4 3B 78 */	mr r4, r7
/* 80287104 00284044  7D 05 43 78 */	mr r5, r8
/* 80287108 00284048  7D 26 4B 78 */	mr r6, r9
/* 8028710C 0028404C  39 81 00 08 */	addi r12, r1, 8
/* 80287110 00284050  48 0D AF 75 */	bl func_80362084
/* 80287114 00284054  60 00 00 00 */	nop 
/* 80287118 00284058  48 00 00 4C */	b lbl_80287164
lbl_8028711C:
/* 8028711C 0028405C  7F E3 FB 78 */	mr r3, r31
/* 80287120 00284060  7C 04 03 78 */	mr r4, r0
/* 80287124 00284064  7C E6 3B 78 */	mr r6, r7
/* 80287128 00284068  7D 07 43 78 */	mr r7, r8
/* 8028712C 0028406C  7D 28 4B 78 */	mr r8, r9
/* 80287130 00284070  4B FF EE FD */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 80287134 00284074  48 00 00 30 */	b lbl_80287164
lbl_80287138:
/* 80287138 00284078  7F E3 FB 78 */	mr r3, r31
/* 8028713C 0028407C  7C 04 03 78 */	mr r4, r0
/* 80287140 00284080  4B FF EF 8D */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_n
/* 80287144 00284084  48 00 00 20 */	b lbl_80287164
lbl_80287148:
/* 80287148 00284088  7F E3 FB 78 */	mr r3, r31
/* 8028714C 0028408C  7C E4 3B 78 */	mr r4, r7
/* 80287150 00284090  7D 05 43 78 */	mr r5, r8
/* 80287154 00284094  7D 26 4B 78 */	mr r6, r9
/* 80287158 00284098  39 81 00 08 */	addi r12, r1, 8
/* 8028715C 0028409C  48 0D AF 29 */	bl func_80362084
/* 80287160 002840A0  60 00 00 00 */	nop 
lbl_80287164:
/* 80287164 002840A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80287168 002840A8  48 0D B0 C1 */	bl _restgpr_29
/* 8028716C 002840AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80287170 002840B0  7C 08 03 A6 */	mtlr r0
/* 80287174 002840B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80287178 002840B8  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_fog_NS_dtor
JStudio_NS_TAdaptor_fog_NS_dtor:
/* 8028717C 002840BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287180 002840C0  7C 08 02 A6 */	mflr r0
/* 80287184 002840C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287188 002840C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028718C 002840CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80287190 002840D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287194 002840D4  7C 9F 23 78 */	mr r31, r4
/* 80287198 002840D8  41 82 00 28 */	beq lbl_802871C0
/* 8028719C 002840DC  3C 80 80 3C */	lis r4, lbl_803C54C4@ha
/* 802871A0 002840E0  38 04 54 C4 */	addi r0, r4, lbl_803C54C4@l
/* 802871A4 002840E4  90 1E 00 00 */	stw r0, 0(r30)
/* 802871A8 002840E8  38 80 00 00 */	li r4, 0
/* 802871AC 002840EC  4B FF EE 25 */	bl JStudio_NS_TAdaptor_NS_dtor
/* 802871B0 002840F0  7F E0 07 35 */	extsh. r0, r31
/* 802871B4 002840F4  40 81 00 0C */	ble lbl_802871C0
/* 802871B8 002840F8  7F C3 F3 78 */	mr r3, r30
/* 802871BC 002840FC  48 04 7B 81 */	bl __dl__FPv
lbl_802871C0:
/* 802871C0 00284100  7F C3 F3 78 */	mr r3, r30
/* 802871C4 00284104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802871C8 00284108  83 C1 00 08 */	lwz r30, 8(r1)
/* 802871CC 0028410C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802871D0 00284110  7C 08 03 A6 */	mtlr r0
/* 802871D4 00284114  38 21 00 10 */	addi r1, r1, 0x10
/* 802871D8 00284118  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_fog
JStudio_NS_TObject_fog:
/* 802871DC 0028411C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802871E0 00284120  7C 08 02 A6 */	mflr r0
/* 802871E4 00284124  90 01 00 14 */	stw r0, 0x14(r1)
/* 802871E8 00284128  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802871EC 0028412C  7C 7F 1B 78 */	mr r31, r3
/* 802871F0 00284130  4B FF F6 75 */	bl JStudio_NS_TObject
/* 802871F4 00284134  3C 60 80 3C */	lis r3, lbl_803C54A4@ha
/* 802871F8 00284138  38 03 54 A4 */	addi r0, r3, lbl_803C54A4@l
/* 802871FC 0028413C  90 1F 00 08 */	stw r0, 8(r31)
/* 80287200 00284140  7F E3 FB 78 */	mr r3, r31
/* 80287204 00284144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287208 00284148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028720C 0028414C  7C 08 03 A6 */	mtlr r0
/* 80287210 00284150  38 21 00 10 */	addi r1, r1, 0x10
/* 80287214 00284154  4E 80 00 20 */	blr 
/* 80287218 00284158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028721C 0028415C  7C 08 02 A6 */	mflr r0
/* 80287220 00284160  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287224 00284164  7C A8 2B 78 */	mr r8, r5
/* 80287228 00284168  7C C9 33 78 */	mr r9, r6
/* 8028722C 0028416C  81 43 00 34 */	lwz r10, 0x34(r3)
/* 80287230 00284170  28 0A 00 00 */	cmplwi r10, 0
/* 80287234 00284174  41 82 00 C4 */	beq lbl_802872F8
/* 80287238 00284178  81 63 00 14 */	lwz r11, 0x14(r3)
/* 8028723C 0028417C  54 83 D9 7E */	srwi r3, r4, 5
/* 80287240 00284180  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 80287244 00284184  38 03 FF E3 */	addi r0, r3, -29
/* 80287248 00284188  28 00 00 10 */	cmplwi r0, 0x10
/* 8028724C 0028418C  41 81 00 AC */	bgt lbl_802872F8
/* 80287250 00284190  3C 60 80 3C */	lis r3, lbl_803C4EF0@ha
/* 80287254 00284194  38 63 4E F0 */	addi r3, r3, lbl_803C4EF0@l
/* 80287258 00284198  54 00 10 3A */	slwi r0, r0, 2
/* 8028725C 0028419C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80287260 002841A0  7C 09 03 A6 */	mtctr r0
/* 80287264 002841A4  4E 80 04 20 */	bctr 
/* 80287268 002841A8  38 A0 00 00 */	li r5, 0
/* 8028726C 002841AC  48 00 00 64 */	b lbl_802872D0
/* 80287270 002841B0  38 A0 00 01 */	li r5, 1
/* 80287274 002841B4  48 00 00 5C */	b lbl_802872D0
/* 80287278 002841B8  38 A0 00 02 */	li r5, 2
/* 8028727C 002841BC  48 00 00 54 */	b lbl_802872D0
/* 80287280 002841C0  38 A0 00 03 */	li r5, 3
/* 80287284 002841C4  48 00 00 4C */	b lbl_802872D0
/* 80287288 002841C8  38 A0 00 04 */	li r5, 4
/* 8028728C 002841CC  48 00 00 44 */	b lbl_802872D0
/* 80287290 002841D0  38 A0 00 05 */	li r5, 5
/* 80287294 002841D4  48 00 00 3C */	b lbl_802872D0
/* 80287298 002841D8  3C 60 80 3A */	lis r3, lbl_8039AAC0@ha
/* 8028729C 002841DC  38 03 AA C0 */	addi r0, r3, lbl_8039AAC0@l
/* 802872A0 002841E0  7C 05 03 78 */	mr r5, r0
/* 802872A4 002841E4  38 C0 00 03 */	li r6, 3
/* 802872A8 002841E8  48 00 00 44 */	b lbl_802872EC
/* 802872AC 002841EC  3C 60 80 3A */	lis r3, lbl_8039AACC@ha
/* 802872B0 002841F0  38 03 AA CC */	addi r0, r3, lbl_8039AACC@l
/* 802872B4 002841F4  7C 05 03 78 */	mr r5, r0
/* 802872B8 002841F8  38 C0 00 04 */	li r6, 4
/* 802872BC 002841FC  48 00 00 30 */	b lbl_802872EC
/* 802872C0 00284200  38 A2 BA B8 */	addi r5, r2, lbl_804554B8-_SDA2_BASE_
/* 802872C4 00284204  38 C0 00 02 */	li r6, 2
/* 802872C8 00284208  48 00 00 24 */	b lbl_802872EC
/* 802872CC 0028420C  48 00 00 2C */	b lbl_802872F8
lbl_802872D0:
/* 802872D0 00284210  7D 43 53 78 */	mr r3, r10
/* 802872D4 00284214  7D 64 5B 78 */	mr r4, r11
/* 802872D8 00284218  7C E6 3B 78 */	mr r6, r7
/* 802872DC 0028421C  7D 07 43 78 */	mr r7, r8
/* 802872E0 00284220  7D 28 4B 78 */	mr r8, r9
/* 802872E4 00284224  4B FF ED 49 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 802872E8 00284228  48 00 00 10 */	b lbl_802872F8
lbl_802872EC:
/* 802872EC 0028422C  7D 43 53 78 */	mr r3, r10
/* 802872F0 00284230  7D 64 5B 78 */	mr r4, r11
/* 802872F4 00284234  4B FF ED D9 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_n
lbl_802872F8:
/* 802872F8 00284238  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802872FC 0028423C  7C 08 03 A6 */	mtlr r0
/* 80287300 00284240  38 21 00 10 */	addi r1, r1, 0x10
/* 80287304 00284244  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_light_NS_dtor
JStudio_NS_TAdaptor_light_NS_dtor:
/* 80287308 00284248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028730C 0028424C  7C 08 02 A6 */	mflr r0
/* 80287310 00284250  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287314 00284254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287318 00284258  93 C1 00 08 */	stw r30, 8(r1)
/* 8028731C 0028425C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287320 00284260  7C 9F 23 78 */	mr r31, r4
/* 80287324 00284264  41 82 00 28 */	beq lbl_8028734C
/* 80287328 00284268  3C 80 80 3C */	lis r4, lbl_803C547C@ha
/* 8028732C 0028426C  38 04 54 7C */	addi r0, r4, lbl_803C547C@l
/* 80287330 00284270  90 1E 00 00 */	stw r0, 0(r30)
/* 80287334 00284274  38 80 00 00 */	li r4, 0
/* 80287338 00284278  4B FF EC 99 */	bl JStudio_NS_TAdaptor_NS_dtor
/* 8028733C 0028427C  7F E0 07 35 */	extsh. r0, r31
/* 80287340 00284280  40 81 00 0C */	ble lbl_8028734C
/* 80287344 00284284  7F C3 F3 78 */	mr r3, r30
/* 80287348 00284288  48 04 79 F5 */	bl __dl__FPv
lbl_8028734C:
/* 8028734C 0028428C  7F C3 F3 78 */	mr r3, r30
/* 80287350 00284290  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287354 00284294  83 C1 00 08 */	lwz r30, 8(r1)
/* 80287358 00284298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028735C 0028429C  7C 08 03 A6 */	mtlr r0
/* 80287360 002842A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80287364 002842A4  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_light
JStudio_NS_TObject_light:
/* 80287368 002842A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028736C 002842AC  7C 08 02 A6 */	mflr r0
/* 80287370 002842B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287374 002842B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287378 002842B8  7C 7F 1B 78 */	mr r31, r3
/* 8028737C 002842BC  4B FF F4 E9 */	bl JStudio_NS_TObject
/* 80287380 002842C0  3C 60 80 3C */	lis r3, lbl_803C545C@ha
/* 80287384 002842C4  38 03 54 5C */	addi r0, r3, lbl_803C545C@l
/* 80287388 002842C8  90 1F 00 08 */	stw r0, 8(r31)
/* 8028738C 002842CC  7F E3 FB 78 */	mr r3, r31
/* 80287390 002842D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287394 002842D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287398 002842D8  7C 08 03 A6 */	mtlr r0
/* 8028739C 002842DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802873A0 002842E0  4E 80 00 20 */	blr 
/* 802873A4 002842E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802873A8 002842E8  7C 08 02 A6 */	mflr r0
/* 802873AC 002842EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 802873B0 002842F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802873B4 002842F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802873B8 002842F8  7C A8 2B 78 */	mr r8, r5
/* 802873BC 002842FC  7C C9 33 78 */	mr r9, r6
/* 802873C0 00284300  3C E0 80 3A */	lis r7, lbl_8039AA68@ha
/* 802873C4 00284304  39 67 AA 68 */	addi r11, r7, lbl_8039AA68@l
/* 802873C8 00284308  83 E3 00 34 */	lwz r31, 0x34(r3)
/* 802873CC 0028430C  28 1F 00 00 */	cmplwi r31, 0
/* 802873D0 00284310  41 82 01 F8 */	beq lbl_802875C8
/* 802873D4 00284314  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802873D8 00284318  54 8C D9 7E */	srwi r12, r4, 5
/* 802873DC 0028431C  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 802873E0 00284320  3C 60 80 3A */	lis r3, lbl_803A2180@ha
/* 802873E4 00284324  39 43 21 80 */	addi r10, r3, lbl_803A2180@l
/* 802873E8 00284328  80 8A 00 00 */	lwz r4, 0(r10)
/* 802873EC 0028432C  80 6A 00 04 */	lwz r3, 4(r10)
/* 802873F0 00284330  90 81 00 08 */	stw r4, 8(r1)
/* 802873F4 00284334  90 61 00 0C */	stw r3, 0xc(r1)
/* 802873F8 00284338  80 6A 00 08 */	lwz r3, 8(r10)
/* 802873FC 0028433C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287400 00284340  38 8C FF EB */	addi r4, r12, -21
/* 80287404 00284344  28 04 00 22 */	cmplwi r4, 0x22
/* 80287408 00284348  41 81 01 C0 */	bgt lbl_802875C8
/* 8028740C 0028434C  3C 60 80 3C */	lis r3, lbl_803C4F4C@ha
/* 80287410 00284350  38 63 4F 4C */	addi r3, r3, lbl_803C4F4C@l
/* 80287414 00284354  54 84 10 3A */	slwi r4, r4, 2
/* 80287418 00284358  7C 63 20 2E */	lwzx r3, r3, r4
/* 8028741C 0028435C  7C 69 03 A6 */	mtctr r3
/* 80287420 00284360  4E 80 04 20 */	bctr 
/* 80287424 00284364  3C 60 80 3C */	lis r3, lbl_803C4F34@ha
/* 80287428 00284368  38 A3 4F 34 */	addi r5, r3, lbl_803C4F34@l
/* 8028742C 0028436C  80 85 00 00 */	lwz r4, 0(r5)
/* 80287430 00284370  80 65 00 04 */	lwz r3, 4(r5)
/* 80287434 00284374  90 81 00 08 */	stw r4, 8(r1)
/* 80287438 00284378  90 61 00 0C */	stw r3, 0xc(r1)
/* 8028743C 0028437C  80 65 00 08 */	lwz r3, 8(r5)
/* 80287440 00284380  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287444 00284384  3C 60 80 43 */	lis r3, lbl_8043108C@ha
/* 80287448 00284388  38 63 10 8C */	addi r3, r3, lbl_8043108C@l
/* 8028744C 0028438C  7C 7E 1B 78 */	mr r30, r3
/* 80287450 00284390  48 00 00 C8 */	b lbl_80287518
/* 80287454 00284394  3C 60 80 3C */	lis r3, lbl_803C4F40@ha
/* 80287458 00284398  38 83 4F 40 */	addi r4, r3, lbl_803C4F40@l
/* 8028745C 0028439C  80 64 00 00 */	lwz r3, 0(r4)
/* 80287460 002843A0  80 04 00 04 */	lwz r0, 4(r4)
/* 80287464 002843A4  90 61 00 08 */	stw r3, 8(r1)
/* 80287468 002843A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028746C 002843AC  80 04 00 08 */	lwz r0, 8(r4)
/* 80287470 002843B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287474 002843B4  48 00 01 40 */	b lbl_802875B4
/* 80287478 002843B8  38 A0 00 00 */	li r5, 0
/* 8028747C 002843BC  48 00 01 0C */	b lbl_80287588
/* 80287480 002843C0  38 A0 00 01 */	li r5, 1
/* 80287484 002843C4  48 00 01 04 */	b lbl_80287588
/* 80287488 002843C8  38 A0 00 02 */	li r5, 2
/* 8028748C 002843CC  48 00 00 FC */	b lbl_80287588
/* 80287490 002843D0  38 A0 00 03 */	li r5, 3
/* 80287494 002843D4  48 00 00 F4 */	b lbl_80287588
/* 80287498 002843D8  38 A0 00 04 */	li r5, 4
/* 8028749C 002843DC  48 00 00 EC */	b lbl_80287588
/* 802874A0 002843E0  38 A0 00 05 */	li r5, 5
/* 802874A4 002843E4  48 00 00 E4 */	b lbl_80287588
/* 802874A8 002843E8  38 A0 00 06 */	li r5, 6
/* 802874AC 002843EC  48 00 00 DC */	b lbl_80287588
/* 802874B0 002843F0  38 A0 00 07 */	li r5, 7
/* 802874B4 002843F4  48 00 00 D4 */	b lbl_80287588
/* 802874B8 002843F8  38 A0 00 08 */	li r5, 8
/* 802874BC 002843FC  48 00 00 CC */	b lbl_80287588
/* 802874C0 00284400  38 A0 00 09 */	li r5, 9
/* 802874C4 00284404  48 00 00 C4 */	b lbl_80287588
/* 802874C8 00284408  38 A0 00 0A */	li r5, 0xa
/* 802874CC 0028440C  48 00 00 BC */	b lbl_80287588
/* 802874D0 00284410  38 A0 00 0B */	li r5, 0xb
/* 802874D4 00284414  48 00 00 B4 */	b lbl_80287588
/* 802874D8 00284418  38 AB 00 74 */	addi r5, r11, 0x74
/* 802874DC 0028441C  38 C0 00 03 */	li r6, 3
/* 802874E0 00284420  48 00 00 C4 */	b lbl_802875A4
/* 802874E4 00284424  38 AB 00 80 */	addi r5, r11, 0x80
/* 802874E8 00284428  38 C0 00 04 */	li r6, 4
/* 802874EC 0028442C  48 00 00 B8 */	b lbl_802875A4
/* 802874F0 00284430  38 AB 00 90 */	addi r5, r11, 0x90
/* 802874F4 00284434  38 C0 00 03 */	li r6, 3
/* 802874F8 00284438  48 00 00 AC */	b lbl_802875A4
/* 802874FC 0028443C  38 AB 00 9C */	addi r5, r11, 0x9c
/* 80287500 00284440  38 C0 00 03 */	li r6, 3
/* 80287504 00284444  48 00 00 A0 */	b lbl_802875A4
/* 80287508 00284448  38 A2 BA C0 */	addi r5, r2, lbl_804554C0-_SDA2_BASE_
/* 8028750C 0028444C  38 C0 00 02 */	li r6, 2
/* 80287510 00284450  48 00 00 94 */	b lbl_802875A4
/* 80287514 00284454  48 00 00 B4 */	b lbl_802875C8
lbl_80287518:
/* 80287518 00284458  2C 07 00 13 */	cmpwi r7, 0x13
/* 8028751C 0028445C  40 80 00 4C */	bge lbl_80287568
/* 80287520 00284460  2C 07 00 10 */	cmpwi r7, 0x10
/* 80287524 00284464  40 80 00 08 */	bge lbl_8028752C
/* 80287528 00284468  48 00 00 40 */	b lbl_80287568
lbl_8028752C:
/* 8028752C 0028446C  7F E3 FB 78 */	mr r3, r31
/* 80287530 00284470  7C 04 03 78 */	mr r4, r0
/* 80287534 00284474  38 A0 00 0C */	li r5, 0xc
/* 80287538 00284478  7C E6 3B 78 */	mr r6, r7
/* 8028753C 0028447C  7D 07 43 78 */	mr r7, r8
/* 80287540 00284480  7D 28 4B 78 */	mr r8, r9
/* 80287544 00284484  4B FF EA E9 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 80287548 00284488  80 7F 00 08 */	lwz r3, 8(r31)
/* 8028754C 0028448C  28 1E 00 00 */	cmplwi r30, 0
/* 80287550 00284490  41 82 00 0C */	beq lbl_8028755C
/* 80287554 00284494  7F C0 F3 78 */	mr r0, r30
/* 80287558 00284498  48 00 00 08 */	b lbl_80287560
lbl_8028755C:
/* 8028755C 0028449C  38 0D 8C 70 */	addi r0, r13, lbl_804511F0-_SDA_BASE_
lbl_80287560:
/* 80287560 002844A0  90 03 01 00 */	stw r0, 0x100(r3)
/* 80287564 002844A4  48 00 00 64 */	b lbl_802875C8
lbl_80287568:
/* 80287568 002844A8  7F E3 FB 78 */	mr r3, r31
/* 8028756C 002844AC  7C E4 3B 78 */	mr r4, r7
/* 80287570 002844B0  7D 05 43 78 */	mr r5, r8
/* 80287574 002844B4  7D 26 4B 78 */	mr r6, r9
/* 80287578 002844B8  39 81 00 08 */	addi r12, r1, 8
/* 8028757C 002844BC  48 0D AB 09 */	bl func_80362084
/* 80287580 002844C0  60 00 00 00 */	nop 
/* 80287584 002844C4  48 00 00 44 */	b lbl_802875C8
lbl_80287588:
/* 80287588 002844C8  7F E3 FB 78 */	mr r3, r31
/* 8028758C 002844CC  7C 04 03 78 */	mr r4, r0
/* 80287590 002844D0  7C E6 3B 78 */	mr r6, r7
/* 80287594 002844D4  7D 07 43 78 */	mr r7, r8
/* 80287598 002844D8  7D 28 4B 78 */	mr r8, r9
/* 8028759C 002844DC  4B FF EA 91 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 802875A0 002844E0  48 00 00 28 */	b lbl_802875C8
lbl_802875A4:
/* 802875A4 002844E4  7F E3 FB 78 */	mr r3, r31
/* 802875A8 002844E8  7C 04 03 78 */	mr r4, r0
/* 802875AC 002844EC  4B FF EB 21 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_n
/* 802875B0 002844F0  48 00 00 18 */	b lbl_802875C8
lbl_802875B4:
/* 802875B4 002844F4  7F E3 FB 78 */	mr r3, r31
/* 802875B8 002844F8  7C E4 3B 78 */	mr r4, r7
/* 802875BC 002844FC  39 81 00 08 */	addi r12, r1, 8
/* 802875C0 00284500  48 0D AA C5 */	bl func_80362084
/* 802875C4 00284504  60 00 00 00 */	nop 
lbl_802875C8:
/* 802875C8 00284508  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802875CC 0028450C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802875D0 00284510  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802875D4 00284514  7C 08 03 A6 */	mtlr r0
/* 802875D8 00284518  38 21 00 20 */	addi r1, r1, 0x20
/* 802875DC 0028451C  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_message_NS_dtor
JStudio_NS_TAdaptor_message_NS_dtor:
/* 802875E0 00284520  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802875E4 00284524  7C 08 02 A6 */	mflr r0
/* 802875E8 00284528  90 01 00 14 */	stw r0, 0x14(r1)
/* 802875EC 0028452C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802875F0 00284530  93 C1 00 08 */	stw r30, 8(r1)
/* 802875F4 00284534  7C 7E 1B 79 */	or. r30, r3, r3
/* 802875F8 00284538  7C 9F 23 78 */	mr r31, r4
/* 802875FC 0028453C  41 82 00 28 */	beq lbl_80287624
/* 80287600 00284540  3C 80 80 3A */	lis r4, lbl_803A7BC0@ha
/* 80287604 00284544  38 04 7B C0 */	addi r0, r4, lbl_803A7BC0@l
/* 80287608 00284548  90 1E 00 00 */	stw r0, 0(r30)
/* 8028760C 0028454C  38 80 00 00 */	li r4, 0
/* 80287610 00284550  4B FF E9 C1 */	bl JStudio_NS_TAdaptor_NS_dtor
/* 80287614 00284554  7F E0 07 35 */	extsh. r0, r31
/* 80287618 00284558  40 81 00 0C */	ble lbl_80287624
/* 8028761C 0028455C  7F C3 F3 78 */	mr r3, r30
/* 80287620 00284560  48 04 77 1D */	bl __dl__FPv
lbl_80287624:
/* 80287624 00284564  7F C3 F3 78 */	mr r3, r30
/* 80287628 00284568  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028762C 0028456C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80287630 00284570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287634 00284574  7C 08 03 A6 */	mtlr r0
/* 80287638 00284578  38 21 00 10 */	addi r1, r1, 0x10
/* 8028763C 0028457C  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_message
JStudio_NS_TObject_message:
/* 80287640 00284580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287644 00284584  7C 08 02 A6 */	mflr r0
/* 80287648 00284588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028764C 0028458C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287650 00284590  7C 7F 1B 78 */	mr r31, r3
/* 80287654 00284594  4B FF F2 11 */	bl JStudio_NS_TObject
/* 80287658 00284598  3C 60 80 3C */	lis r3, lbl_803C5418@ha
/* 8028765C 0028459C  38 03 54 18 */	addi r0, r3, lbl_803C5418@l
/* 80287660 002845A0  90 1F 00 08 */	stw r0, 8(r31)
/* 80287664 002845A4  7F E3 FB 78 */	mr r3, r31
/* 80287668 002845A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028766C 002845AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287670 002845B0  7C 08 03 A6 */	mtlr r0
/* 80287674 002845B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80287678 002845B8  4E 80 00 20 */	blr 
/* 8028767C 002845BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80287680 002845C0  7C 08 02 A6 */	mflr r0
/* 80287684 002845C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80287688 002845C8  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8028768C 002845CC  28 03 00 00 */	cmplwi r3, 0
/* 80287690 002845D0  41 82 00 6C */	beq lbl_802876FC
/* 80287694 002845D4  54 89 D9 7E */	srwi r9, r4, 5
/* 80287698 002845D8  54 84 06 FE */	clrlwi r4, r4, 0x1b
/* 8028769C 002845DC  3C E0 80 3A */	lis r7, lbl_803A2180@ha
/* 802876A0 002845E0  39 07 21 80 */	addi r8, r7, lbl_803A2180@l
/* 802876A4 002845E4  80 E8 00 00 */	lwz r7, 0(r8)
/* 802876A8 002845E8  80 08 00 04 */	lwz r0, 4(r8)
/* 802876AC 002845EC  90 E1 00 08 */	stw r7, 8(r1)
/* 802876B0 002845F0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802876B4 002845F4  80 08 00 08 */	lwz r0, 8(r8)
/* 802876B8 002845F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 802876BC 002845FC  2C 09 00 42 */	cmpwi r9, 0x42
/* 802876C0 00284600  41 82 00 08 */	beq lbl_802876C8
/* 802876C4 00284604  48 00 00 38 */	b lbl_802876FC
lbl_802876C8:
/* 802876C8 00284608  3C E0 80 3C */	lis r7, lbl_803C4FD8@ha
/* 802876CC 0028460C  39 07 4F D8 */	addi r8, r7, lbl_803C4FD8@l
/* 802876D0 00284610  80 E8 00 00 */	lwz r7, 0(r8)
/* 802876D4 00284614  80 08 00 04 */	lwz r0, 4(r8)
/* 802876D8 00284618  90 E1 00 08 */	stw r7, 8(r1)
/* 802876DC 0028461C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802876E0 00284620  80 08 00 08 */	lwz r0, 8(r8)
/* 802876E4 00284624  90 01 00 10 */	stw r0, 0x10(r1)
/* 802876E8 00284628  48 00 00 08 */	b lbl_802876F0
/* 802876EC 0028462C  48 00 00 10 */	b lbl_802876FC
lbl_802876F0:
/* 802876F0 00284630  39 81 00 08 */	addi r12, r1, 8
/* 802876F4 00284634  48 0D A9 91 */	bl func_80362084
/* 802876F8 00284638  60 00 00 00 */	nop 
lbl_802876FC:
/* 802876FC 0028463C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80287700 00284640  7C 08 03 A6 */	mtlr r0
/* 80287704 00284644  38 21 00 20 */	addi r1, r1, 0x20
/* 80287708 00284648  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_particle_NS_dtor
JStudio_NS_TAdaptor_particle_NS_dtor:
/* 8028770C 0028464C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287710 00284650  7C 08 02 A6 */	mflr r0
/* 80287714 00284654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287718 00284658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028771C 0028465C  93 C1 00 08 */	stw r30, 8(r1)
/* 80287720 00284660  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287724 00284664  7C 9F 23 78 */	mr r31, r4
/* 80287728 00284668  41 82 00 28 */	beq lbl_80287750
/* 8028772C 0028466C  3C 80 80 3C */	lis r4, lbl_803C53CC@ha
/* 80287730 00284670  38 04 53 CC */	addi r0, r4, lbl_803C53CC@l
/* 80287734 00284674  90 1E 00 00 */	stw r0, 0(r30)
/* 80287738 00284678  38 80 00 00 */	li r4, 0
/* 8028773C 0028467C  4B FF E8 95 */	bl JStudio_NS_TAdaptor_NS_dtor
/* 80287740 00284680  7F E0 07 35 */	extsh. r0, r31
/* 80287744 00284684  40 81 00 0C */	ble lbl_80287750
/* 80287748 00284688  7F C3 F3 78 */	mr r3, r30
/* 8028774C 0028468C  48 04 75 F1 */	bl __dl__FPv
lbl_80287750:
/* 80287750 00284690  7F C3 F3 78 */	mr r3, r30
/* 80287754 00284694  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287758 00284698  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028775C 0028469C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287760 002846A0  7C 08 03 A6 */	mtlr r0
/* 80287764 002846A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80287768 002846A8  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_particle
JStudio_NS_TObject_particle:
/* 8028776C 002846AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287770 002846B0  7C 08 02 A6 */	mflr r0
/* 80287774 002846B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287778 002846B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028777C 002846BC  7C 7F 1B 78 */	mr r31, r3
/* 80287780 002846C0  4B FF F0 E5 */	bl JStudio_NS_TObject
/* 80287784 002846C4  3C 60 80 3C */	lis r3, lbl_803C53AC@ha
/* 80287788 002846C8  38 03 53 AC */	addi r0, r3, lbl_803C53AC@l
/* 8028778C 002846CC  90 1F 00 08 */	stw r0, 8(r31)
/* 80287790 002846D0  7F E3 FB 78 */	mr r3, r31
/* 80287794 002846D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287798 002846D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028779C 002846DC  7C 08 03 A6 */	mtlr r0
/* 802877A0 002846E0  38 21 00 10 */	addi r1, r1, 0x10
/* 802877A4 002846E4  4E 80 00 20 */	blr 
/* 802877A8 002846E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802877AC 002846EC  7C 08 02 A6 */	mflr r0
/* 802877B0 002846F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802877B4 002846F4  39 61 00 30 */	addi r11, r1, 0x30
/* 802877B8 002846F8  48 0D AA 25 */	bl _savegpr_29
/* 802877BC 002846FC  7C A8 2B 78 */	mr r8, r5
/* 802877C0 00284700  7C C9 33 78 */	mr r9, r6
/* 802877C4 00284704  3C A0 80 43 */	lis r5, lbl_80431010@ha
/* 802877C8 00284708  38 C5 10 10 */	addi r6, r5, lbl_80431010@l
/* 802877CC 0028470C  3C A0 80 3A */	lis r5, lbl_8039AA68@ha
/* 802877D0 00284710  39 65 AA 68 */	addi r11, r5, lbl_8039AA68@l
/* 802877D4 00284714  3C A0 80 3C */	lis r5, lbl_803C4B00@ha
/* 802877D8 00284718  38 A5 4B 00 */	addi r5, r5, lbl_803C4B00@l
/* 802877DC 0028471C  83 E3 00 34 */	lwz r31, 0x34(r3)
/* 802877E0 00284720  28 1F 00 00 */	cmplwi r31, 0
/* 802877E4 00284724  41 82 03 40 */	beq lbl_80287B24
/* 802877E8 00284728  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802877EC 0028472C  54 8C D9 7E */	srwi r12, r4, 5
/* 802877F0 00284730  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 802877F4 00284734  3C 60 80 3A */	lis r3, lbl_803A2180@ha
/* 802877F8 00284738  39 43 21 80 */	addi r10, r3, lbl_803A2180@l
/* 802877FC 0028473C  80 8A 00 00 */	lwz r4, 0(r10)
/* 80287800 00284740  80 6A 00 04 */	lwz r3, 4(r10)
/* 80287804 00284744  90 81 00 08 */	stw r4, 8(r1)
/* 80287808 00284748  90 61 00 0C */	stw r3, 0xc(r1)
/* 8028780C 0028474C  80 6A 00 08 */	lwz r3, 8(r10)
/* 80287810 00284750  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287814 00284754  38 8C FF F7 */	addi r4, r12, -9
/* 80287818 00284758  28 04 00 4D */	cmplwi r4, 0x4d
/* 8028781C 0028475C  41 81 03 08 */	bgt lbl_80287B24
/* 80287820 00284760  3C 60 80 3C */	lis r3, lbl_803C5068@ha
/* 80287824 00284764  38 63 50 68 */	addi r3, r3, lbl_803C5068@l
/* 80287828 00284768  54 84 10 3A */	slwi r4, r4, 2
/* 8028782C 0028476C  7C 63 20 2E */	lwzx r3, r3, r4
/* 80287830 00284770  7C 69 03 A6 */	mtctr r3
/* 80287834 00284774  4E 80 04 20 */	bctr 
/* 80287838 00284778  80 65 04 E4 */	lwz r3, 0x4e4(r5)
/* 8028783C 0028477C  80 05 04 E8 */	lwz r0, 0x4e8(r5)
/* 80287840 00284780  90 61 00 08 */	stw r3, 8(r1)
/* 80287844 00284784  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287848 00284788  80 05 04 EC */	lwz r0, 0x4ec(r5)
/* 8028784C 0028478C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287850 00284790  48 00 02 B8 */	b lbl_80287B08
/* 80287854 00284794  80 65 04 F0 */	lwz r3, 0x4f0(r5)
/* 80287858 00284798  80 05 04 F4 */	lwz r0, 0x4f4(r5)
/* 8028785C 0028479C  90 61 00 08 */	stw r3, 8(r1)
/* 80287860 002847A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287864 002847A4  80 05 04 F8 */	lwz r0, 0x4f8(r5)
/* 80287868 002847A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 8028786C 002847AC  48 00 02 9C */	b lbl_80287B08
/* 80287870 002847B0  80 65 04 FC */	lwz r3, 0x4fc(r5)
/* 80287874 002847B4  80 05 05 00 */	lwz r0, 0x500(r5)
/* 80287878 002847B8  90 61 00 08 */	stw r3, 8(r1)
/* 8028787C 002847BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287880 002847C0  80 05 05 04 */	lwz r0, 0x504(r5)
/* 80287884 002847C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287888 002847C8  48 00 02 80 */	b lbl_80287B08
/* 8028788C 002847CC  80 65 05 08 */	lwz r3, 0x508(r5)
/* 80287890 002847D0  80 05 05 0C */	lwz r0, 0x50c(r5)
/* 80287894 002847D4  90 61 00 08 */	stw r3, 8(r1)
/* 80287898 002847D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028789C 002847DC  80 05 05 10 */	lwz r0, 0x510(r5)
/* 802878A0 002847E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802878A4 002847E4  48 00 02 64 */	b lbl_80287B08
/* 802878A8 002847E8  80 65 05 14 */	lwz r3, 0x514(r5)
/* 802878AC 002847EC  80 05 05 18 */	lwz r0, 0x518(r5)
/* 802878B0 002847F0  90 61 00 08 */	stw r3, 8(r1)
/* 802878B4 002847F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802878B8 002847F8  80 05 05 1C */	lwz r0, 0x51c(r5)
/* 802878BC 002847FC  90 01 00 10 */	stw r0, 0x10(r1)
/* 802878C0 00284800  48 00 02 48 */	b lbl_80287B08
/* 802878C4 00284804  80 65 05 20 */	lwz r3, 0x520(r5)
/* 802878C8 00284808  80 05 05 24 */	lwz r0, 0x524(r5)
/* 802878CC 0028480C  90 61 00 08 */	stw r3, 8(r1)
/* 802878D0 00284810  90 01 00 0C */	stw r0, 0xc(r1)
/* 802878D4 00284814  80 05 05 28 */	lwz r0, 0x528(r5)
/* 802878D8 00284818  90 01 00 10 */	stw r0, 0x10(r1)
/* 802878DC 0028481C  48 00 02 2C */	b lbl_80287B08
/* 802878E0 00284820  80 65 05 2C */	lwz r3, 0x52c(r5)
/* 802878E4 00284824  80 05 05 30 */	lwz r0, 0x530(r5)
/* 802878E8 00284828  90 61 00 08 */	stw r3, 8(r1)
/* 802878EC 0028482C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802878F0 00284830  80 05 05 34 */	lwz r0, 0x534(r5)
/* 802878F4 00284834  90 01 00 10 */	stw r0, 0x10(r1)
/* 802878F8 00284838  48 00 02 10 */	b lbl_80287B08
/* 802878FC 0028483C  80 85 05 38 */	lwz r4, 0x538(r5)
/* 80287900 00284840  80 65 05 3C */	lwz r3, 0x53c(r5)
/* 80287904 00284844  90 81 00 08 */	stw r4, 8(r1)
/* 80287908 00284848  90 61 00 0C */	stw r3, 0xc(r1)
/* 8028790C 0028484C  80 65 05 40 */	lwz r3, 0x540(r5)
/* 80287910 00284850  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287914 00284854  3B C0 00 11 */	li r30, 0x11
/* 80287918 00284858  3B A6 00 98 */	addi r29, r6, 0x98
/* 8028791C 0028485C  48 00 01 48 */	b lbl_80287A64
/* 80287920 00284860  80 65 05 44 */	lwz r3, 0x544(r5)
/* 80287924 00284864  80 05 05 48 */	lwz r0, 0x548(r5)
/* 80287928 00284868  90 61 00 08 */	stw r3, 8(r1)
/* 8028792C 0028486C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287930 00284870  80 05 05 4C */	lwz r0, 0x54c(r5)
/* 80287934 00284874  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287938 00284878  48 00 01 D0 */	b lbl_80287B08
/* 8028793C 0028487C  80 85 05 50 */	lwz r4, 0x550(r5)
/* 80287940 00284880  80 65 05 54 */	lwz r3, 0x554(r5)
/* 80287944 00284884  90 81 00 08 */	stw r4, 8(r1)
/* 80287948 00284888  90 61 00 0C */	stw r3, 0xc(r1)
/* 8028794C 0028488C  80 65 05 58 */	lwz r3, 0x558(r5)
/* 80287950 00284890  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287954 00284894  3B C0 00 12 */	li r30, 0x12
/* 80287958 00284898  3B A6 00 B4 */	addi r29, r6, 0xb4
/* 8028795C 0028489C  48 00 01 08 */	b lbl_80287A64
/* 80287960 002848A0  80 85 05 5C */	lwz r4, 0x55c(r5)
/* 80287964 002848A4  80 65 05 60 */	lwz r3, 0x560(r5)
/* 80287968 002848A8  90 81 00 08 */	stw r4, 8(r1)
/* 8028796C 002848AC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287970 002848B0  80 65 05 64 */	lwz r3, 0x564(r5)
/* 80287974 002848B4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287978 002848B8  3B C0 00 13 */	li r30, 0x13
/* 8028797C 002848BC  3B A6 00 D0 */	addi r29, r6, 0xd0
/* 80287980 002848C0  48 00 00 E4 */	b lbl_80287A64
/* 80287984 002848C4  38 A0 00 00 */	li r5, 0
/* 80287988 002848C8  48 00 01 54 */	b lbl_80287ADC
/* 8028798C 002848CC  38 A0 00 01 */	li r5, 1
/* 80287990 002848D0  48 00 01 4C */	b lbl_80287ADC
/* 80287994 002848D4  38 A0 00 02 */	li r5, 2
/* 80287998 002848D8  48 00 01 44 */	b lbl_80287ADC
/* 8028799C 002848DC  38 A0 00 03 */	li r5, 3
/* 802879A0 002848E0  48 00 01 3C */	b lbl_80287ADC
/* 802879A4 002848E4  38 A0 00 04 */	li r5, 4
/* 802879A8 002848E8  48 00 01 34 */	b lbl_80287ADC
/* 802879AC 002848EC  38 A0 00 05 */	li r5, 5
/* 802879B0 002848F0  48 00 01 2C */	b lbl_80287ADC
/* 802879B4 002848F4  38 A0 00 06 */	li r5, 6
/* 802879B8 002848F8  48 00 01 24 */	b lbl_80287ADC
/* 802879BC 002848FC  38 A0 00 07 */	li r5, 7
/* 802879C0 00284900  48 00 01 1C */	b lbl_80287ADC
/* 802879C4 00284904  38 A0 00 08 */	li r5, 8
/* 802879C8 00284908  48 00 01 14 */	b lbl_80287ADC
/* 802879CC 0028490C  38 A0 00 09 */	li r5, 9
/* 802879D0 00284910  48 00 01 0C */	b lbl_80287ADC
/* 802879D4 00284914  38 A0 00 0A */	li r5, 0xa
/* 802879D8 00284918  48 00 01 04 */	b lbl_80287ADC
/* 802879DC 0028491C  38 A0 00 0B */	li r5, 0xb
/* 802879E0 00284920  48 00 00 FC */	b lbl_80287ADC
/* 802879E4 00284924  38 A0 00 0C */	li r5, 0xc
/* 802879E8 00284928  48 00 00 F4 */	b lbl_80287ADC
/* 802879EC 0028492C  38 A0 00 0D */	li r5, 0xd
/* 802879F0 00284930  48 00 00 EC */	b lbl_80287ADC
/* 802879F4 00284934  38 A0 00 0E */	li r5, 0xe
/* 802879F8 00284938  48 00 00 E4 */	b lbl_80287ADC
/* 802879FC 0028493C  38 A0 00 0F */	li r5, 0xf
/* 80287A00 00284940  48 00 00 DC */	b lbl_80287ADC
/* 80287A04 00284944  38 A0 00 10 */	li r5, 0x10
/* 80287A08 00284948  48 00 00 D4 */	b lbl_80287ADC
/* 80287A0C 0028494C  38 AB 00 A8 */	addi r5, r11, 0xa8
/* 80287A10 00284950  38 C0 00 03 */	li r6, 3
/* 80287A14 00284954  48 00 00 E4 */	b lbl_80287AF8
/* 80287A18 00284958  38 AB 00 B4 */	addi r5, r11, 0xb4
/* 80287A1C 0028495C  38 C0 00 03 */	li r6, 3
/* 80287A20 00284960  48 00 00 D8 */	b lbl_80287AF8
/* 80287A24 00284964  38 AB 00 C0 */	addi r5, r11, 0xc0
/* 80287A28 00284968  38 C0 00 03 */	li r6, 3
/* 80287A2C 0028496C  48 00 00 CC */	b lbl_80287AF8
/* 80287A30 00284970  38 AB 00 CC */	addi r5, r11, 0xcc
/* 80287A34 00284974  38 C0 00 03 */	li r6, 3
/* 80287A38 00284978  48 00 00 C0 */	b lbl_80287AF8
/* 80287A3C 0028497C  38 AB 00 D8 */	addi r5, r11, 0xd8
/* 80287A40 00284980  38 C0 00 04 */	li r6, 4
/* 80287A44 00284984  48 00 00 B4 */	b lbl_80287AF8
/* 80287A48 00284988  38 AB 00 E8 */	addi r5, r11, 0xe8
/* 80287A4C 0028498C  38 C0 00 03 */	li r6, 3
/* 80287A50 00284990  48 00 00 A8 */	b lbl_80287AF8
/* 80287A54 00284994  38 AB 00 F4 */	addi r5, r11, 0xf4
/* 80287A58 00284998  38 C0 00 04 */	li r6, 4
/* 80287A5C 0028499C  48 00 00 9C */	b lbl_80287AF8
/* 80287A60 002849A0  48 00 00 C4 */	b lbl_80287B24
lbl_80287A64:
/* 80287A64 002849A4  2C 07 00 13 */	cmpwi r7, 0x13
/* 80287A68 002849A8  40 80 00 54 */	bge lbl_80287ABC
/* 80287A6C 002849AC  2C 07 00 10 */	cmpwi r7, 0x10
/* 80287A70 002849B0  40 80 00 08 */	bge lbl_80287A78
/* 80287A74 002849B4  48 00 00 48 */	b lbl_80287ABC
lbl_80287A78:
/* 80287A78 002849B8  7F E3 FB 78 */	mr r3, r31
/* 80287A7C 002849BC  7C 04 03 78 */	mr r4, r0
/* 80287A80 002849C0  7F C5 F3 78 */	mr r5, r30
/* 80287A84 002849C4  7C E6 3B 78 */	mr r6, r7
/* 80287A88 002849C8  7D 07 43 78 */	mr r7, r8
/* 80287A8C 002849CC  7D 28 4B 78 */	mr r8, r9
/* 80287A90 002849D0  4B FF E5 9D */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 80287A94 002849D4  80 7F 00 08 */	lwz r3, 8(r31)
/* 80287A98 002849D8  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 80287A9C 002849DC  7C 63 02 14 */	add r3, r3, r0
/* 80287AA0 002849E0  28 1D 00 00 */	cmplwi r29, 0
/* 80287AA4 002849E4  41 82 00 0C */	beq lbl_80287AB0
/* 80287AA8 002849E8  7F A0 EB 78 */	mr r0, r29
/* 80287AAC 002849EC  48 00 00 08 */	b lbl_80287AB4
lbl_80287AB0:
/* 80287AB0 002849F0  38 0D 8C 70 */	addi r0, r13, lbl_804511F0-_SDA_BASE_
lbl_80287AB4:
/* 80287AB4 002849F4  90 03 00 10 */	stw r0, 0x10(r3)
/* 80287AB8 002849F8  48 00 00 6C */	b lbl_80287B24
lbl_80287ABC:
/* 80287ABC 002849FC  7F E3 FB 78 */	mr r3, r31
/* 80287AC0 00284A00  7C E4 3B 78 */	mr r4, r7
/* 80287AC4 00284A04  7D 05 43 78 */	mr r5, r8
/* 80287AC8 00284A08  7D 26 4B 78 */	mr r6, r9
/* 80287ACC 00284A0C  39 81 00 08 */	addi r12, r1, 8
/* 80287AD0 00284A10  48 0D A5 B5 */	bl func_80362084
/* 80287AD4 00284A14  60 00 00 00 */	nop 
/* 80287AD8 00284A18  48 00 00 4C */	b lbl_80287B24
lbl_80287ADC:
/* 80287ADC 00284A1C  7F E3 FB 78 */	mr r3, r31
/* 80287AE0 00284A20  7C 04 03 78 */	mr r4, r0
/* 80287AE4 00284A24  7C E6 3B 78 */	mr r6, r7
/* 80287AE8 00284A28  7D 07 43 78 */	mr r7, r8
/* 80287AEC 00284A2C  7D 28 4B 78 */	mr r8, r9
/* 80287AF0 00284A30  4B FF E5 3D */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 80287AF4 00284A34  48 00 00 30 */	b lbl_80287B24
lbl_80287AF8:
/* 80287AF8 00284A38  7F E3 FB 78 */	mr r3, r31
/* 80287AFC 00284A3C  7C 04 03 78 */	mr r4, r0
/* 80287B00 00284A40  4B FF E5 CD */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_n
/* 80287B04 00284A44  48 00 00 20 */	b lbl_80287B24
lbl_80287B08:
/* 80287B08 00284A48  7F E3 FB 78 */	mr r3, r31
/* 80287B0C 00284A4C  7C E4 3B 78 */	mr r4, r7
/* 80287B10 00284A50  7D 05 43 78 */	mr r5, r8
/* 80287B14 00284A54  7D 26 4B 78 */	mr r6, r9
/* 80287B18 00284A58  39 81 00 08 */	addi r12, r1, 8
/* 80287B1C 00284A5C  48 0D A5 69 */	bl func_80362084
/* 80287B20 00284A60  60 00 00 00 */	nop 
lbl_80287B24:
/* 80287B24 00284A64  39 61 00 30 */	addi r11, r1, 0x30
/* 80287B28 00284A68  48 0D A7 01 */	bl _restgpr_29
/* 80287B2C 00284A6C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80287B30 00284A70  7C 08 03 A6 */	mtlr r0
/* 80287B34 00284A74  38 21 00 30 */	addi r1, r1, 0x30
/* 80287B38 00284A78  4E 80 00 20 */	blr 

.global JStudio_NS_TAdaptor_sound_NS_dtor
JStudio_NS_TAdaptor_sound_NS_dtor:
/* 80287B3C 00284A7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287B40 00284A80  7C 08 02 A6 */	mflr r0
/* 80287B44 00284A84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287B48 00284A88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287B4C 00284A8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80287B50 00284A90  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287B54 00284A94  7C 9F 23 78 */	mr r31, r4
/* 80287B58 00284A98  41 82 00 28 */	beq lbl_80287B80
/* 80287B5C 00284A9C  3C 80 80 3C */	lis r4, lbl_803C535C@ha
/* 80287B60 00284AA0  38 04 53 5C */	addi r0, r4, lbl_803C535C@l
/* 80287B64 00284AA4  90 1E 00 00 */	stw r0, 0(r30)
/* 80287B68 00284AA8  38 80 00 00 */	li r4, 0
/* 80287B6C 00284AAC  4B FF E4 65 */	bl JStudio_NS_TAdaptor_NS_dtor
/* 80287B70 00284AB0  7F E0 07 35 */	extsh. r0, r31
/* 80287B74 00284AB4  40 81 00 0C */	ble lbl_80287B80
/* 80287B78 00284AB8  7F C3 F3 78 */	mr r3, r30
/* 80287B7C 00284ABC  48 04 71 C1 */	bl __dl__FPv
lbl_80287B80:
/* 80287B80 00284AC0  7F C3 F3 78 */	mr r3, r30
/* 80287B84 00284AC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287B88 00284AC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80287B8C 00284ACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287B90 00284AD0  7C 08 03 A6 */	mtlr r0
/* 80287B94 00284AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80287B98 00284AD8  4E 80 00 20 */	blr 

.global JStudio_NS_TObject_sound
JStudio_NS_TObject_sound:
/* 80287B9C 00284ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287BA0 00284AE0  7C 08 02 A6 */	mflr r0
/* 80287BA4 00284AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287BA8 00284AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287BAC 00284AEC  7C 7F 1B 78 */	mr r31, r3
/* 80287BB0 00284AF0  4B FF EC B5 */	bl JStudio_NS_TObject
/* 80287BB4 00284AF4  3C 60 80 3C */	lis r3, lbl_803C533C@ha
/* 80287BB8 00284AF8  38 03 53 3C */	addi r0, r3, lbl_803C533C@l
/* 80287BBC 00284AFC  90 1F 00 08 */	stw r0, 8(r31)
/* 80287BC0 00284B00  7F E3 FB 78 */	mr r3, r31
/* 80287BC4 00284B04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287BC8 00284B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287BCC 00284B0C  7C 08 03 A6 */	mtlr r0
/* 80287BD0 00284B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80287BD4 00284B14  4E 80 00 20 */	blr 
/* 80287BD8 00284B18  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80287BDC 00284B1C  7C 08 02 A6 */	mflr r0
/* 80287BE0 00284B20  90 01 00 34 */	stw r0, 0x34(r1)
/* 80287BE4 00284B24  39 61 00 30 */	addi r11, r1, 0x30
/* 80287BE8 00284B28  48 0D A5 F5 */	bl _savegpr_29
/* 80287BEC 00284B2C  7C A8 2B 78 */	mr r8, r5
/* 80287BF0 00284B30  7C C9 33 78 */	mr r9, r6
/* 80287BF4 00284B34  3C A0 80 43 */	lis r5, lbl_80431010@ha
/* 80287BF8 00284B38  38 C5 10 10 */	addi r6, r5, lbl_80431010@l
/* 80287BFC 00284B3C  3C A0 80 3C */	lis r5, lbl_803C4B00@ha
/* 80287C00 00284B40  38 A5 4B 00 */	addi r5, r5, lbl_803C4B00@l
/* 80287C04 00284B44  83 E3 00 34 */	lwz r31, 0x34(r3)
/* 80287C08 00284B48  28 1F 00 00 */	cmplwi r31, 0
/* 80287C0C 00284B4C  41 82 02 E0 */	beq lbl_80287EEC
/* 80287C10 00284B50  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80287C14 00284B54  54 8B D9 7E */	srwi r11, r4, 5
/* 80287C18 00284B58  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 80287C1C 00284B5C  3C 60 80 3A */	lis r3, lbl_803A2180@ha
/* 80287C20 00284B60  39 43 21 80 */	addi r10, r3, lbl_803A2180@l
/* 80287C24 00284B64  80 8A 00 00 */	lwz r4, 0(r10)
/* 80287C28 00284B68  80 6A 00 04 */	lwz r3, 4(r10)
/* 80287C2C 00284B6C  90 81 00 08 */	stw r4, 8(r1)
/* 80287C30 00284B70  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287C34 00284B74  80 6A 00 08 */	lwz r3, 8(r10)
/* 80287C38 00284B78  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287C3C 00284B7C  38 8B FF EB */	addi r4, r11, -21
/* 80287C40 00284B80  28 04 00 42 */	cmplwi r4, 0x42
/* 80287C44 00284B84  41 81 02 A8 */	bgt lbl_80287EEC
/* 80287C48 00284B88  3C 60 80 3C */	lis r3, lbl_803C5230@ha
/* 80287C4C 00284B8C  38 63 52 30 */	addi r3, r3, lbl_803C5230@l
/* 80287C50 00284B90  54 84 10 3A */	slwi r4, r4, 2
/* 80287C54 00284B94  7C 63 20 2E */	lwzx r3, r3, r4
/* 80287C58 00284B98  7C 69 03 A6 */	mtctr r3
/* 80287C5C 00284B9C  4E 80 04 20 */	bctr 
/* 80287C60 00284BA0  80 65 06 A0 */	lwz r3, 0x6a0(r5)
/* 80287C64 00284BA4  80 05 06 A4 */	lwz r0, 0x6a4(r5)
/* 80287C68 00284BA8  90 61 00 08 */	stw r3, 8(r1)
/* 80287C6C 00284BAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287C70 00284BB0  80 05 06 A8 */	lwz r0, 0x6a8(r5)
/* 80287C74 00284BB4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287C78 00284BB8  48 00 02 58 */	b lbl_80287ED0
/* 80287C7C 00284BBC  80 65 06 AC */	lwz r3, 0x6ac(r5)
/* 80287C80 00284BC0  80 05 06 B0 */	lwz r0, 0x6b0(r5)
/* 80287C84 00284BC4  90 61 00 08 */	stw r3, 8(r1)
/* 80287C88 00284BC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287C8C 00284BCC  80 05 06 B4 */	lwz r0, 0x6b4(r5)
/* 80287C90 00284BD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287C94 00284BD4  48 00 02 3C */	b lbl_80287ED0
/* 80287C98 00284BD8  80 65 06 B8 */	lwz r3, 0x6b8(r5)
/* 80287C9C 00284BDC  80 05 06 BC */	lwz r0, 0x6bc(r5)
/* 80287CA0 00284BE0  90 61 00 08 */	stw r3, 8(r1)
/* 80287CA4 00284BE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287CA8 00284BE8  80 05 06 C0 */	lwz r0, 0x6c0(r5)
/* 80287CAC 00284BEC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287CB0 00284BF0  48 00 02 20 */	b lbl_80287ED0
/* 80287CB4 00284BF4  80 65 06 C4 */	lwz r3, 0x6c4(r5)
/* 80287CB8 00284BF8  80 05 06 C8 */	lwz r0, 0x6c8(r5)
/* 80287CBC 00284BFC  90 61 00 08 */	stw r3, 8(r1)
/* 80287CC0 00284C00  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287CC4 00284C04  80 05 06 CC */	lwz r0, 0x6cc(r5)
/* 80287CC8 00284C08  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287CCC 00284C0C  48 00 02 04 */	b lbl_80287ED0
/* 80287CD0 00284C10  80 65 06 D0 */	lwz r3, 0x6d0(r5)
/* 80287CD4 00284C14  80 05 06 D4 */	lwz r0, 0x6d4(r5)
/* 80287CD8 00284C18  90 61 00 08 */	stw r3, 8(r1)
/* 80287CDC 00284C1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287CE0 00284C20  80 05 06 D8 */	lwz r0, 0x6d8(r5)
/* 80287CE4 00284C24  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287CE8 00284C28  48 00 01 E8 */	b lbl_80287ED0
/* 80287CEC 00284C2C  80 65 06 DC */	lwz r3, 0x6dc(r5)
/* 80287CF0 00284C30  80 05 06 E0 */	lwz r0, 0x6e0(r5)
/* 80287CF4 00284C34  90 61 00 08 */	stw r3, 8(r1)
/* 80287CF8 00284C38  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287CFC 00284C3C  80 05 06 E4 */	lwz r0, 0x6e4(r5)
/* 80287D00 00284C40  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287D04 00284C44  48 00 01 CC */	b lbl_80287ED0
/* 80287D08 00284C48  80 65 06 E8 */	lwz r3, 0x6e8(r5)
/* 80287D0C 00284C4C  80 05 06 EC */	lwz r0, 0x6ec(r5)
/* 80287D10 00284C50  90 61 00 08 */	stw r3, 8(r1)
/* 80287D14 00284C54  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287D18 00284C58  80 05 06 F0 */	lwz r0, 0x6f0(r5)
/* 80287D1C 00284C5C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287D20 00284C60  48 00 01 B0 */	b lbl_80287ED0
/* 80287D24 00284C64  80 85 06 F4 */	lwz r4, 0x6f4(r5)
/* 80287D28 00284C68  80 65 06 F8 */	lwz r3, 0x6f8(r5)
/* 80287D2C 00284C6C  90 81 00 08 */	stw r4, 8(r1)
/* 80287D30 00284C70  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287D34 00284C74  80 65 06 FC */	lwz r3, 0x6fc(r5)
/* 80287D38 00284C78  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287D3C 00284C7C  3B C0 00 03 */	li r30, 3
/* 80287D40 00284C80  3B A6 00 EC */	addi r29, r6, 0xec
/* 80287D44 00284C84  48 00 00 E4 */	b lbl_80287E28
/* 80287D48 00284C88  80 85 07 00 */	lwz r4, 0x700(r5)
/* 80287D4C 00284C8C  80 65 07 04 */	lwz r3, 0x704(r5)
/* 80287D50 00284C90  90 81 00 08 */	stw r4, 8(r1)
/* 80287D54 00284C94  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287D58 00284C98  80 65 07 08 */	lwz r3, 0x708(r5)
/* 80287D5C 00284C9C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287D60 00284CA0  3B C0 00 04 */	li r30, 4
/* 80287D64 00284CA4  3B A6 01 08 */	addi r29, r6, 0x108
/* 80287D68 00284CA8  48 00 00 C0 */	b lbl_80287E28
/* 80287D6C 00284CAC  80 85 07 0C */	lwz r4, 0x70c(r5)
/* 80287D70 00284CB0  80 65 07 10 */	lwz r3, 0x710(r5)
/* 80287D74 00284CB4  90 81 00 08 */	stw r4, 8(r1)
/* 80287D78 00284CB8  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287D7C 00284CBC  80 65 07 14 */	lwz r3, 0x714(r5)
/* 80287D80 00284CC0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287D84 00284CC4  3B C0 00 05 */	li r30, 5
/* 80287D88 00284CC8  3B A6 01 24 */	addi r29, r6, 0x124
/* 80287D8C 00284CCC  48 00 00 9C */	b lbl_80287E28
/* 80287D90 00284CD0  80 85 07 18 */	lwz r4, 0x718(r5)
/* 80287D94 00284CD4  80 65 07 1C */	lwz r3, 0x71c(r5)
/* 80287D98 00284CD8  90 81 00 08 */	stw r4, 8(r1)
/* 80287D9C 00284CDC  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287DA0 00284CE0  80 65 07 20 */	lwz r3, 0x720(r5)
/* 80287DA4 00284CE4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287DA8 00284CE8  3B C0 00 06 */	li r30, 6
/* 80287DAC 00284CEC  3B A6 01 40 */	addi r29, r6, 0x140
/* 80287DB0 00284CF0  48 00 00 78 */	b lbl_80287E28
/* 80287DB4 00284CF4  80 85 07 24 */	lwz r4, 0x724(r5)
/* 80287DB8 00284CF8  80 65 07 28 */	lwz r3, 0x728(r5)
/* 80287DBC 00284CFC  90 81 00 08 */	stw r4, 8(r1)
/* 80287DC0 00284D00  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287DC4 00284D04  80 65 07 2C */	lwz r3, 0x72c(r5)
/* 80287DC8 00284D08  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287DCC 00284D0C  3B C0 00 0C */	li r30, 0xc
/* 80287DD0 00284D10  3B A6 01 5C */	addi r29, r6, 0x15c
/* 80287DD4 00284D14  48 00 00 54 */	b lbl_80287E28
/* 80287DD8 00284D18  38 A0 00 00 */	li r5, 0
/* 80287DDC 00284D1C  48 00 00 C4 */	b lbl_80287EA0
/* 80287DE0 00284D20  38 A0 00 01 */	li r5, 1
/* 80287DE4 00284D24  48 00 00 BC */	b lbl_80287EA0
/* 80287DE8 00284D28  38 A0 00 02 */	li r5, 2
/* 80287DEC 00284D2C  48 00 00 B4 */	b lbl_80287EA0
/* 80287DF0 00284D30  38 A0 00 07 */	li r5, 7
/* 80287DF4 00284D34  48 00 00 AC */	b lbl_80287EA0
/* 80287DF8 00284D38  38 A0 00 08 */	li r5, 8
/* 80287DFC 00284D3C  48 00 00 A4 */	b lbl_80287EA0
/* 80287E00 00284D40  38 A0 00 09 */	li r5, 9
/* 80287E04 00284D44  48 00 00 9C */	b lbl_80287EA0
/* 80287E08 00284D48  38 A0 00 0A */	li r5, 0xa
/* 80287E0C 00284D4C  48 00 00 94 */	b lbl_80287EA0
/* 80287E10 00284D50  38 A0 00 0B */	li r5, 0xb
/* 80287E14 00284D54  48 00 00 8C */	b lbl_80287EA0
/* 80287E18 00284D58  3C 60 80 3A */	lis r3, lbl_8039AB6C@ha
/* 80287E1C 00284D5C  38 A3 AB 6C */	addi r5, r3, lbl_8039AB6C@l
/* 80287E20 00284D60  48 00 00 9C */	b lbl_80287EBC
/* 80287E24 00284D64  48 00 00 C8 */	b lbl_80287EEC
lbl_80287E28:
/* 80287E28 00284D68  2C 07 00 13 */	cmpwi r7, 0x13
/* 80287E2C 00284D6C  40 80 00 54 */	bge lbl_80287E80
/* 80287E30 00284D70  2C 07 00 10 */	cmpwi r7, 0x10
/* 80287E34 00284D74  40 80 00 08 */	bge lbl_80287E3C
/* 80287E38 00284D78  48 00 00 48 */	b lbl_80287E80
lbl_80287E3C:
/* 80287E3C 00284D7C  7F E3 FB 78 */	mr r3, r31
/* 80287E40 00284D80  7C 04 03 78 */	mr r4, r0
/* 80287E44 00284D84  7F C5 F3 78 */	mr r5, r30
/* 80287E48 00284D88  7C E6 3B 78 */	mr r6, r7
/* 80287E4C 00284D8C  7D 07 43 78 */	mr r7, r8
/* 80287E50 00284D90  7D 28 4B 78 */	mr r8, r9
/* 80287E54 00284D94  4B FF E1 D9 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 80287E58 00284D98  80 7F 00 08 */	lwz r3, 8(r31)
/* 80287E5C 00284D9C  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 80287E60 00284DA0  7C 63 02 14 */	add r3, r3, r0
/* 80287E64 00284DA4  28 1D 00 00 */	cmplwi r29, 0
/* 80287E68 00284DA8  41 82 00 0C */	beq lbl_80287E74
/* 80287E6C 00284DAC  7F A0 EB 78 */	mr r0, r29
/* 80287E70 00284DB0  48 00 00 08 */	b lbl_80287E78
lbl_80287E74:
/* 80287E74 00284DB4  38 0D 8C 70 */	addi r0, r13, lbl_804511F0-_SDA_BASE_
lbl_80287E78:
/* 80287E78 00284DB8  90 03 00 10 */	stw r0, 0x10(r3)
/* 80287E7C 00284DBC  48 00 00 70 */	b lbl_80287EEC
lbl_80287E80:
/* 80287E80 00284DC0  7F E3 FB 78 */	mr r3, r31
/* 80287E84 00284DC4  7C E4 3B 78 */	mr r4, r7
/* 80287E88 00284DC8  7D 05 43 78 */	mr r5, r8
/* 80287E8C 00284DCC  7D 26 4B 78 */	mr r6, r9
/* 80287E90 00284DD0  39 81 00 08 */	addi r12, r1, 8
/* 80287E94 00284DD4  48 0D A1 F1 */	bl func_80362084
/* 80287E98 00284DD8  60 00 00 00 */	nop 
/* 80287E9C 00284DDC  48 00 00 50 */	b lbl_80287EEC
lbl_80287EA0:
/* 80287EA0 00284DE0  7F E3 FB 78 */	mr r3, r31
/* 80287EA4 00284DE4  7C 04 03 78 */	mr r4, r0
/* 80287EA8 00284DE8  7C E6 3B 78 */	mr r6, r7
/* 80287EAC 00284DEC  7D 07 43 78 */	mr r7, r8
/* 80287EB0 00284DF0  7D 28 4B 78 */	mr r8, r9
/* 80287EB4 00284DF4  4B FF E1 79 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue
/* 80287EB8 00284DF8  48 00 00 34 */	b lbl_80287EEC
lbl_80287EBC:
/* 80287EBC 00284DFC  7F E3 FB 78 */	mr r3, r31
/* 80287EC0 00284E00  7C 04 03 78 */	mr r4, r0
/* 80287EC4 00284E04  38 C0 00 03 */	li r6, 3
/* 80287EC8 00284E08  4B FF E2 05 */	bl JStudio_NS_TAdaptor_NS_adaptor_setVariableValue_n
/* 80287ECC 00284E0C  48 00 00 20 */	b lbl_80287EEC
lbl_80287ED0:
/* 80287ED0 00284E10  7F E3 FB 78 */	mr r3, r31
/* 80287ED4 00284E14  7C E4 3B 78 */	mr r4, r7
/* 80287ED8 00284E18  7D 05 43 78 */	mr r5, r8
/* 80287EDC 00284E1C  7D 26 4B 78 */	mr r6, r9
/* 80287EE0 00284E20  39 81 00 08 */	addi r12, r1, 8
/* 80287EE4 00284E24  48 0D A1 A1 */	bl func_80362084
/* 80287EE8 00284E28  60 00 00 00 */	nop 
lbl_80287EEC:
/* 80287EEC 00284E2C  39 61 00 30 */	addi r11, r1, 0x30
/* 80287EF0 00284E30  48 0D A3 39 */	bl _restgpr_29
/* 80287EF4 00284E34  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80287EF8 00284E38  7C 08 03 A6 */	mtlr r0
/* 80287EFC 00284E3C  38 21 00 30 */	addi r1, r1, 0x30
/* 80287F00 00284E40  4E 80 00 20 */	blr 
/* 80287F04 00284E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287F08 00284E48  7C 08 02 A6 */	mflr r0
/* 80287F0C 00284E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287F10 00284E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287F14 00284E54  93 C1 00 08 */	stw r30, 8(r1)
/* 80287F18 00284E58  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287F1C 00284E5C  7C 9F 23 78 */	mr r31, r4
/* 80287F20 00284E60  41 82 00 28 */	beq lbl_80287F48
/* 80287F24 00284E64  3C 80 80 3C */	lis r4, lbl_803C533C@ha
/* 80287F28 00284E68  38 04 53 3C */	addi r0, r4, lbl_803C533C@l
/* 80287F2C 00284E6C  90 1E 00 08 */	stw r0, 8(r30)
/* 80287F30 00284E70  38 80 00 00 */	li r4, 0
/* 80287F34 00284E74  4B FF E7 7D */	bl JStudio_NS_TObject_NS_dtor
/* 80287F38 00284E78  7F E0 07 35 */	extsh. r0, r31
/* 80287F3C 00284E7C  40 81 00 0C */	ble lbl_80287F48
/* 80287F40 00284E80  7F C3 F3 78 */	mr r3, r30
/* 80287F44 00284E84  48 04 6D F9 */	bl __dl__FPv
lbl_80287F48:
/* 80287F48 00284E88  7F C3 F3 78 */	mr r3, r30
/* 80287F4C 00284E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287F50 00284E90  83 C1 00 08 */	lwz r30, 8(r1)
/* 80287F54 00284E94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287F58 00284E98  7C 08 03 A6 */	mtlr r0
/* 80287F5C 00284E9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80287F60 00284EA0  4E 80 00 20 */	blr 
/* 80287F64 00284EA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287F68 00284EA8  7C 08 02 A6 */	mflr r0
/* 80287F6C 00284EAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287F70 00284EB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287F74 00284EB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80287F78 00284EB8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287F7C 00284EBC  7C 9F 23 78 */	mr r31, r4
/* 80287F80 00284EC0  41 82 00 28 */	beq lbl_80287FA8
/* 80287F84 00284EC4  3C 80 80 3C */	lis r4, lbl_803C53AC@ha
/* 80287F88 00284EC8  38 04 53 AC */	addi r0, r4, lbl_803C53AC@l
/* 80287F8C 00284ECC  90 1E 00 08 */	stw r0, 8(r30)
/* 80287F90 00284ED0  38 80 00 00 */	li r4, 0
/* 80287F94 00284ED4  4B FF E7 1D */	bl JStudio_NS_TObject_NS_dtor
/* 80287F98 00284ED8  7F E0 07 35 */	extsh. r0, r31
/* 80287F9C 00284EDC  40 81 00 0C */	ble lbl_80287FA8
/* 80287FA0 00284EE0  7F C3 F3 78 */	mr r3, r30
/* 80287FA4 00284EE4  48 04 6D 99 */	bl __dl__FPv
lbl_80287FA8:
/* 80287FA8 00284EE8  7F C3 F3 78 */	mr r3, r30
/* 80287FAC 00284EEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80287FB0 00284EF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80287FB4 00284EF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287FB8 00284EF8  7C 08 03 A6 */	mtlr r0
/* 80287FBC 00284EFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80287FC0 00284F00  4E 80 00 20 */	blr 
/* 80287FC4 00284F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287FC8 00284F08  7C 08 02 A6 */	mflr r0
/* 80287FCC 00284F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287FD0 00284F10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287FD4 00284F14  93 C1 00 08 */	stw r30, 8(r1)
/* 80287FD8 00284F18  7C 7E 1B 79 */	or. r30, r3, r3
/* 80287FDC 00284F1C  7C 9F 23 78 */	mr r31, r4
/* 80287FE0 00284F20  41 82 00 28 */	beq lbl_80288008
/* 80287FE4 00284F24  3C 80 80 3C */	lis r4, lbl_803C5418@ha
/* 80287FE8 00284F28  38 04 54 18 */	addi r0, r4, lbl_803C5418@l
/* 80287FEC 00284F2C  90 1E 00 08 */	stw r0, 8(r30)
/* 80287FF0 00284F30  38 80 00 00 */	li r4, 0
/* 80287FF4 00284F34  4B FF E6 BD */	bl JStudio_NS_TObject_NS_dtor
/* 80287FF8 00284F38  7F E0 07 35 */	extsh. r0, r31
/* 80287FFC 00284F3C  40 81 00 0C */	ble lbl_80288008
/* 80288000 00284F40  7F C3 F3 78 */	mr r3, r30
/* 80288004 00284F44  48 04 6D 39 */	bl __dl__FPv
lbl_80288008:
/* 80288008 00284F48  7F C3 F3 78 */	mr r3, r30
/* 8028800C 00284F4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80288010 00284F50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80288014 00284F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288018 00284F58  7C 08 03 A6 */	mtlr r0
/* 8028801C 00284F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80288020 00284F60  4E 80 00 20 */	blr 
/* 80288024 00284F64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288028 00284F68  7C 08 02 A6 */	mflr r0
/* 8028802C 00284F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288030 00284F70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80288034 00284F74  93 C1 00 08 */	stw r30, 8(r1)
/* 80288038 00284F78  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028803C 00284F7C  7C 9F 23 78 */	mr r31, r4
/* 80288040 00284F80  41 82 00 28 */	beq lbl_80288068
/* 80288044 00284F84  3C 80 80 3C */	lis r4, lbl_803C545C@ha
/* 80288048 00284F88  38 04 54 5C */	addi r0, r4, lbl_803C545C@l
/* 8028804C 00284F8C  90 1E 00 08 */	stw r0, 8(r30)
/* 80288050 00284F90  38 80 00 00 */	li r4, 0
/* 80288054 00284F94  4B FF E6 5D */	bl JStudio_NS_TObject_NS_dtor
/* 80288058 00284F98  7F E0 07 35 */	extsh. r0, r31
/* 8028805C 00284F9C  40 81 00 0C */	ble lbl_80288068
/* 80288060 00284FA0  7F C3 F3 78 */	mr r3, r30
/* 80288064 00284FA4  48 04 6C D9 */	bl __dl__FPv
lbl_80288068:
/* 80288068 00284FA8  7F C3 F3 78 */	mr r3, r30
/* 8028806C 00284FAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80288070 00284FB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80288074 00284FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288078 00284FB8  7C 08 03 A6 */	mtlr r0
/* 8028807C 00284FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80288080 00284FC0  4E 80 00 20 */	blr 
/* 80288084 00284FC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288088 00284FC8  7C 08 02 A6 */	mflr r0
/* 8028808C 00284FCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288090 00284FD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80288094 00284FD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80288098 00284FD8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028809C 00284FDC  7C 9F 23 78 */	mr r31, r4
/* 802880A0 00284FE0  41 82 00 28 */	beq lbl_802880C8
/* 802880A4 00284FE4  3C 80 80 3C */	lis r4, lbl_803C54A4@ha
/* 802880A8 00284FE8  38 04 54 A4 */	addi r0, r4, lbl_803C54A4@l
/* 802880AC 00284FEC  90 1E 00 08 */	stw r0, 8(r30)
/* 802880B0 00284FF0  38 80 00 00 */	li r4, 0
/* 802880B4 00284FF4  4B FF E5 FD */	bl JStudio_NS_TObject_NS_dtor
/* 802880B8 00284FF8  7F E0 07 35 */	extsh. r0, r31
/* 802880BC 00284FFC  40 81 00 0C */	ble lbl_802880C8
/* 802880C0 00285000  7F C3 F3 78 */	mr r3, r30
/* 802880C4 00285004  48 04 6C 79 */	bl __dl__FPv
lbl_802880C8:
/* 802880C8 00285008  7F C3 F3 78 */	mr r3, r30
/* 802880CC 0028500C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802880D0 00285010  83 C1 00 08 */	lwz r30, 8(r1)
/* 802880D4 00285014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802880D8 00285018  7C 08 03 A6 */	mtlr r0
/* 802880DC 0028501C  38 21 00 10 */	addi r1, r1, 0x10
/* 802880E0 00285020  4E 80 00 20 */	blr 
/* 802880E4 00285024  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802880E8 00285028  7C 08 02 A6 */	mflr r0
/* 802880EC 0028502C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802880F0 00285030  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802880F4 00285034  93 C1 00 08 */	stw r30, 8(r1)
/* 802880F8 00285038  7C 7E 1B 79 */	or. r30, r3, r3
/* 802880FC 0028503C  7C 9F 23 78 */	mr r31, r4
/* 80288100 00285040  41 82 00 28 */	beq lbl_80288128
/* 80288104 00285044  3C 80 80 3C */	lis r4, lbl_803C54E4@ha
/* 80288108 00285048  38 04 54 E4 */	addi r0, r4, lbl_803C54E4@l
/* 8028810C 0028504C  90 1E 00 08 */	stw r0, 8(r30)
/* 80288110 00285050  38 80 00 00 */	li r4, 0
/* 80288114 00285054  4B FF E5 9D */	bl JStudio_NS_TObject_NS_dtor
/* 80288118 00285058  7F E0 07 35 */	extsh. r0, r31
/* 8028811C 0028505C  40 81 00 0C */	ble lbl_80288128
/* 80288120 00285060  7F C3 F3 78 */	mr r3, r30
/* 80288124 00285064  48 04 6C 19 */	bl __dl__FPv
lbl_80288128:
/* 80288128 00285068  7F C3 F3 78 */	mr r3, r30
/* 8028812C 0028506C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80288130 00285070  83 C1 00 08 */	lwz r30, 8(r1)
/* 80288134 00285074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288138 00285078  7C 08 03 A6 */	mtlr r0
/* 8028813C 0028507C  38 21 00 10 */	addi r1, r1, 0x10
/* 80288140 00285080  4E 80 00 20 */	blr 
/* 80288144 00285084  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288148 00285088  7C 08 02 A6 */	mflr r0
/* 8028814C 0028508C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288150 00285090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80288154 00285094  93 C1 00 08 */	stw r30, 8(r1)
/* 80288158 00285098  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028815C 0028509C  7C 9F 23 78 */	mr r31, r4
/* 80288160 002850A0  41 82 00 28 */	beq lbl_80288188
/* 80288164 002850A4  3C 80 80 3C */	lis r4, lbl_803C5540@ha
/* 80288168 002850A8  38 04 55 40 */	addi r0, r4, lbl_803C5540@l
/* 8028816C 002850AC  90 1E 00 08 */	stw r0, 8(r30)
/* 80288170 002850B0  38 80 00 00 */	li r4, 0
/* 80288174 002850B4  4B FF E5 3D */	bl JStudio_NS_TObject_NS_dtor
/* 80288178 002850B8  7F E0 07 35 */	extsh. r0, r31
/* 8028817C 002850BC  40 81 00 0C */	ble lbl_80288188
/* 80288180 002850C0  7F C3 F3 78 */	mr r3, r30
/* 80288184 002850C4  48 04 6B B9 */	bl __dl__FPv
lbl_80288188:
/* 80288188 002850C8  7F C3 F3 78 */	mr r3, r30
/* 8028818C 002850CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80288190 002850D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80288194 002850D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288198 002850D8  7C 08 03 A6 */	mtlr r0
/* 8028819C 002850DC  38 21 00 10 */	addi r1, r1, 0x10
/* 802881A0 002850E0  4E 80 00 20 */	blr 
/* 802881A4 002850E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802881A8 002850E8  7C 08 02 A6 */	mflr r0
/* 802881AC 002850EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802881B0 002850F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802881B4 002850F4  93 C1 00 08 */	stw r30, 8(r1)
/* 802881B8 002850F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802881BC 002850FC  7C 9F 23 78 */	mr r31, r4
/* 802881C0 00285100  41 82 00 28 */	beq lbl_802881E8
/* 802881C4 00285104  3C 80 80 3C */	lis r4, lbl_803C5580@ha
/* 802881C8 00285108  38 04 55 80 */	addi r0, r4, lbl_803C5580@l
/* 802881CC 0028510C  90 1E 00 08 */	stw r0, 8(r30)
/* 802881D0 00285110  38 80 00 00 */	li r4, 0
/* 802881D4 00285114  4B FF E4 DD */	bl JStudio_NS_TObject_NS_dtor
/* 802881D8 00285118  7F E0 07 35 */	extsh. r0, r31
/* 802881DC 0028511C  40 81 00 0C */	ble lbl_802881E8
/* 802881E0 00285120  7F C3 F3 78 */	mr r3, r30
/* 802881E4 00285124  48 04 6B 59 */	bl __dl__FPv
lbl_802881E8:
/* 802881E8 00285128  7F C3 F3 78 */	mr r3, r30
/* 802881EC 0028512C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802881F0 00285130  83 C1 00 08 */	lwz r30, 8(r1)
/* 802881F4 00285134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802881F8 00285138  7C 08 03 A6 */	mtlr r0
/* 802881FC 0028513C  38 21 00 10 */	addi r1, r1, 0x10
/* 80288200 00285140  4E 80 00 20 */	blr 
/* 80288204 00285144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288208 00285148  7C 08 02 A6 */	mflr r0
/* 8028820C 0028514C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288210 00285150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80288214 00285154  93 C1 00 08 */	stw r30, 8(r1)
/* 80288218 00285158  3C 60 80 43 */	lis r3, lbl_80431010@ha
/* 8028821C 0028515C  3B E3 10 10 */	addi r31, r3, lbl_80431010@l
/* 80288220 00285160  3C 60 80 3C */	lis r3, lbl_803C4B00@ha
/* 80288224 00285164  3B C3 4B 00 */	addi r30, r3, lbl_803C4B00@l
/* 80288228 00285168  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028822C 0028516C  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 80288230 00285170  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80288234 00285174  3C 60 80 3C */	lis r3, lbl_803C5690@ha
/* 80288238 00285178  38 03 56 90 */	addi r0, r3, lbl_803C5690@l
/* 8028823C 0028517C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 80288240 00285180  38 7F 00 0C */	addi r3, r31, 0xc
/* 80288244 00285184  80 9E 00 00 */	lwz r4, 0(r30)
/* 80288248 00285188  80 1E 00 04 */	lwz r0, 4(r30)
/* 8028824C 0028518C  90 83 00 04 */	stw r4, 4(r3)
/* 80288250 00285190  90 03 00 08 */	stw r0, 8(r3)
/* 80288254 00285194  80 1E 00 08 */	lwz r0, 8(r30)
/* 80288258 00285198  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_
/* 8028825C 0028519C  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_
/* 80288260 002851A0  38 84 87 5C */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_@l
/* 80288264 002851A4  38 BF 00 00 */	addi r5, r31, 0
/* 80288268 002851A8  48 0D 99 BD */	bl func_80361C24
/* 8028826C 002851AC  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 80288270 002851B0  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 80288274 002851B4  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80288278 002851B8  3C 60 80 3C */	lis r3, lbl_803C5690@ha
/* 8028827C 002851BC  38 03 56 90 */	addi r0, r3, lbl_803C5690@l
/* 80288280 002851C0  90 1F 00 28 */	stw r0, 0x28(r31)
/* 80288284 002851C4  38 7F 00 28 */	addi r3, r31, 0x28
/* 80288288 002851C8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 8028828C 002851CC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 80288290 002851D0  90 83 00 04 */	stw r4, 4(r3)
/* 80288294 002851D4  90 03 00 08 */	stw r0, 8(r3)
/* 80288298 002851D8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 8028829C 002851DC  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_
/* 802882A0 002851E0  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_
/* 802882A4 002851E4  38 84 87 5C */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_@l
/* 802882A8 002851E8  38 BF 00 1C */	addi r5, r31, 0x1c
/* 802882AC 002851EC  48 0D 99 79 */	bl func_80361C24
/* 802882B0 002851F0  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 802882B4 002851F4  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 802882B8 002851F8  90 1F 00 44 */	stw r0, 0x44(r31)
/* 802882BC 002851FC  3C 60 80 3C */	lis r3, lbl_803C5680@ha
/* 802882C0 00285200  38 03 56 80 */	addi r0, r3, lbl_803C5680@l
/* 802882C4 00285204  90 1F 00 44 */	stw r0, 0x44(r31)
/* 802882C8 00285208  38 7F 00 44 */	addi r3, r31, 0x44
/* 802882CC 0028520C  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 802882D0 00285210  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 802882D4 00285214  90 83 00 04 */	stw r4, 4(r3)
/* 802882D8 00285218  90 03 00 08 */	stw r0, 8(r3)
/* 802882DC 0028521C  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802882E0 00285220  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_
/* 802882E4 00285224  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_
/* 802882E8 00285228  38 84 86 FC */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_@l
/* 802882EC 0028522C  38 BF 00 38 */	addi r5, r31, 0x38
/* 802882F0 00285230  48 0D 99 35 */	bl func_80361C24
/* 802882F4 00285234  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 802882F8 00285238  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 802882FC 0028523C  90 1F 00 60 */	stw r0, 0x60(r31)
/* 80288300 00285240  3C 60 80 3C */	lis r3, lbl_803C5680@ha
/* 80288304 00285244  38 03 56 80 */	addi r0, r3, lbl_803C5680@l
/* 80288308 00285248  90 1F 00 60 */	stw r0, 0x60(r31)
/* 8028830C 0028524C  38 7F 00 60 */	addi r3, r31, 0x60
/* 80288310 00285250  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 80288314 00285254  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 80288318 00285258  90 83 00 04 */	stw r4, 4(r3)
/* 8028831C 0028525C  90 03 00 08 */	stw r0, 8(r3)
/* 80288320 00285260  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 80288324 00285264  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_
/* 80288328 00285268  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_
/* 8028832C 0028526C  38 84 86 FC */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_@l
/* 80288330 00285270  38 BF 00 54 */	addi r5, r31, 0x54
/* 80288334 00285274  48 0D 98 F1 */	bl func_80361C24
/* 80288338 00285278  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028833C 0028527C  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 80288340 00285280  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 80288344 00285284  3C 60 80 3C */	lis r3, lbl_803C5670@ha
/* 80288348 00285288  38 03 56 70 */	addi r0, r3, lbl_803C5670@l
/* 8028834C 0028528C  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 80288350 00285290  38 7F 00 7C */	addi r3, r31, 0x7c
/* 80288354 00285294  80 9E 00 30 */	lwz r4, 0x30(r30)
/* 80288358 00285298  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 8028835C 0028529C  90 83 00 04 */	stw r4, 4(r3)
/* 80288360 002852A0  90 03 00 08 */	stw r0, 8(r3)
/* 80288364 002852A4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80288368 002852A8  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X2_
/* 8028836C 002852AC  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X2_@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X2_
/* 80288370 002852B0  38 84 86 9C */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X2_@l
/* 80288374 002852B4  38 BF 00 70 */	addi r5, r31, 0x70
/* 80288378 002852B8  48 0D 98 AD */	bl func_80361C24
/* 8028837C 002852BC  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 80288380 002852C0  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 80288384 002852C4  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80288388 002852C8  3C 60 80 3C */	lis r3, lbl_803C5660@ha
/* 8028838C 002852CC  38 03 56 60 */	addi r0, r3, lbl_803C5660@l
/* 80288390 002852D0  90 1F 00 98 */	stw r0, 0x98(r31)
/* 80288394 002852D4  38 7F 00 98 */	addi r3, r31, 0x98
/* 80288398 002852D8  80 9E 00 3C */	lwz r4, 0x3c(r30)
/* 8028839C 002852DC  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 802883A0 002852E0  90 83 00 04 */	stw r4, 4(r3)
/* 802883A4 002852E4  90 03 00 08 */	stw r0, 8(r3)
/* 802883A8 002852E8  80 1E 00 44 */	lwz r0, 0x44(r30)
/* 802883AC 002852EC  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_
/* 802883B0 002852F0  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_
/* 802883B4 002852F4  38 84 86 3C */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_@l
/* 802883B8 002852F8  38 BF 00 8C */	addi r5, r31, 0x8c
/* 802883BC 002852FC  48 0D 98 69 */	bl func_80361C24
/* 802883C0 00285300  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 802883C4 00285304  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 802883C8 00285308  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 802883CC 0028530C  3C 60 80 3C */	lis r3, lbl_803C5660@ha
/* 802883D0 00285310  38 03 56 60 */	addi r0, r3, lbl_803C5660@l
/* 802883D4 00285314  90 1F 00 B4 */	stw r0, 0xb4(r31)
/* 802883D8 00285318  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 802883DC 0028531C  80 9E 00 48 */	lwz r4, 0x48(r30)
/* 802883E0 00285320  80 1E 00 4C */	lwz r0, 0x4c(r30)
/* 802883E4 00285324  90 83 00 04 */	stw r4, 4(r3)
/* 802883E8 00285328  90 03 00 08 */	stw r0, 8(r3)
/* 802883EC 0028532C  80 1E 00 50 */	lwz r0, 0x50(r30)
/* 802883F0 00285330  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_
/* 802883F4 00285334  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_
/* 802883F8 00285338  38 84 86 3C */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_@l
/* 802883FC 0028533C  38 BF 00 A8 */	addi r5, r31, 0xa8
/* 80288400 00285340  48 0D 98 25 */	bl func_80361C24
/* 80288404 00285344  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 80288408 00285348  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 8028840C 0028534C  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 80288410 00285350  3C 60 80 3C */	lis r3, lbl_803C5660@ha
/* 80288414 00285354  38 03 56 60 */	addi r0, r3, lbl_803C5660@l
/* 80288418 00285358  90 1F 00 D0 */	stw r0, 0xd0(r31)
/* 8028841C 0028535C  38 7F 00 D0 */	addi r3, r31, 0xd0
/* 80288420 00285360  80 9E 00 54 */	lwz r4, 0x54(r30)
/* 80288424 00285364  80 1E 00 58 */	lwz r0, 0x58(r30)
/* 80288428 00285368  90 83 00 04 */	stw r4, 4(r3)
/* 8028842C 0028536C  90 03 00 08 */	stw r0, 8(r3)
/* 80288430 00285370  80 1E 00 5C */	lwz r0, 0x5c(r30)
/* 80288434 00285374  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_
/* 80288438 00285378  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_
/* 8028843C 0028537C  38 84 86 3C */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_@l
/* 80288440 00285380  38 BF 00 C4 */	addi r5, r31, 0xc4
/* 80288444 00285384  48 0D 97 E1 */	bl func_80361C24
/* 80288448 00285388  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028844C 0028538C  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 80288450 00285390  90 1F 00 EC */	stw r0, 0xec(r31)
/* 80288454 00285394  3C 60 80 3C */	lis r3, lbl_803C5650@ha
/* 80288458 00285398  38 03 56 50 */	addi r0, r3, lbl_803C5650@l
/* 8028845C 0028539C  90 1F 00 EC */	stw r0, 0xec(r31)
/* 80288460 002853A0  38 7F 00 EC */	addi r3, r31, 0xec
/* 80288464 002853A4  80 9E 00 60 */	lwz r4, 0x60(r30)
/* 80288468 002853A8  80 1E 00 64 */	lwz r0, 0x64(r30)
/* 8028846C 002853AC  90 83 00 04 */	stw r4, 4(r3)
/* 80288470 002853B0  90 03 00 08 */	stw r0, 8(r3)
/* 80288474 002853B4  80 1E 00 68 */	lwz r0, 0x68(r30)
/* 80288478 002853B8  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 8028847C 002853BC  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 80288480 002853C0  38 84 85 DC */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@l
/* 80288484 002853C4  38 BF 00 E0 */	addi r5, r31, 0xe0
/* 80288488 002853C8  48 0D 97 9D */	bl func_80361C24
/* 8028848C 002853CC  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 80288490 002853D0  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 80288494 002853D4  90 1F 01 08 */	stw r0, 0x108(r31)
/* 80288498 002853D8  3C 60 80 3C */	lis r3, lbl_803C5650@ha
/* 8028849C 002853DC  38 03 56 50 */	addi r0, r3, lbl_803C5650@l
/* 802884A0 002853E0  90 1F 01 08 */	stw r0, 0x108(r31)
/* 802884A4 002853E4  38 7F 01 08 */	addi r3, r31, 0x108
/* 802884A8 002853E8  80 9E 00 6C */	lwz r4, 0x6c(r30)
/* 802884AC 002853EC  80 1E 00 70 */	lwz r0, 0x70(r30)
/* 802884B0 002853F0  90 83 00 04 */	stw r4, 4(r3)
/* 802884B4 002853F4  90 03 00 08 */	stw r0, 8(r3)
/* 802884B8 002853F8  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 802884BC 002853FC  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 802884C0 00285400  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 802884C4 00285404  38 84 85 DC */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@l
/* 802884C8 00285408  38 BF 00 FC */	addi r5, r31, 0xfc
/* 802884CC 0028540C  48 0D 97 59 */	bl func_80361C24
/* 802884D0 00285410  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 802884D4 00285414  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 802884D8 00285418  90 1F 01 24 */	stw r0, 0x124(r31)
/* 802884DC 0028541C  3C 60 80 3C */	lis r3, lbl_803C5650@ha
/* 802884E0 00285420  38 03 56 50 */	addi r0, r3, lbl_803C5650@l
/* 802884E4 00285424  90 1F 01 24 */	stw r0, 0x124(r31)
/* 802884E8 00285428  38 7F 01 24 */	addi r3, r31, 0x124
/* 802884EC 0028542C  80 9E 00 78 */	lwz r4, 0x78(r30)
/* 802884F0 00285430  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 802884F4 00285434  90 83 00 04 */	stw r4, 4(r3)
/* 802884F8 00285438  90 03 00 08 */	stw r0, 8(r3)
/* 802884FC 0028543C  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 80288500 00285440  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 80288504 00285444  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 80288508 00285448  38 84 85 DC */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@l
/* 8028850C 0028544C  38 BF 01 18 */	addi r5, r31, 0x118
/* 80288510 00285450  48 0D 97 15 */	bl func_80361C24
/* 80288514 00285454  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 80288518 00285458  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 8028851C 0028545C  90 1F 01 40 */	stw r0, 0x140(r31)
/* 80288520 00285460  3C 60 80 3C */	lis r3, lbl_803C5650@ha
/* 80288524 00285464  38 03 56 50 */	addi r0, r3, lbl_803C5650@l
/* 80288528 00285468  90 1F 01 40 */	stw r0, 0x140(r31)
/* 8028852C 0028546C  38 7F 01 40 */	addi r3, r31, 0x140
/* 80288530 00285470  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80288534 00285474  80 1E 00 88 */	lwz r0, 0x88(r30)
/* 80288538 00285478  90 83 00 04 */	stw r4, 4(r3)
/* 8028853C 0028547C  90 03 00 08 */	stw r0, 8(r3)
/* 80288540 00285480  80 1E 00 8C */	lwz r0, 0x8c(r30)
/* 80288544 00285484  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 80288548 00285488  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 8028854C 0028548C  38 84 85 DC */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@l
/* 80288550 00285490  38 BF 01 34 */	addi r5, r31, 0x134
/* 80288554 00285494  48 0D 96 D1 */	bl func_80361C24
/* 80288558 00285498  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 8028855C 0028549C  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 80288560 002854A0  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80288564 002854A4  3C 60 80 3C */	lis r3, lbl_803C5650@ha
/* 80288568 002854A8  38 03 56 50 */	addi r0, r3, lbl_803C5650@l
/* 8028856C 002854AC  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80288570 002854B0  38 7F 01 5C */	addi r3, r31, 0x15c
/* 80288574 002854B4  80 9E 00 90 */	lwz r4, 0x90(r30)
/* 80288578 002854B8  80 1E 00 94 */	lwz r0, 0x94(r30)
/* 8028857C 002854BC  90 83 00 04 */	stw r4, 4(r3)
/* 80288580 002854C0  90 03 00 08 */	stw r0, 8(r3)
/* 80288584 002854C4  80 1E 00 98 */	lwz r0, 0x98(r30)
/* 80288588 002854C8  90 03 00 0C */	stw r0, 0xc(r3)
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 8028858C 002854CC  3C 80 80 29 */	lis r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@ha
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
/* 80288590 002854D0  38 84 85 DC */	addi r4, r4, JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor@l
/* 80288594 002854D4  38 BF 01 50 */	addi r5, r31, 0x150
/* 80288598 002854D8  48 0D 96 8D */	bl func_80361C24
/* 8028859C 002854DC  3C 60 80 3C */	lis r3, lbl_803C5640@ha
/* 802885A0 002854E0  38 03 56 40 */	addi r0, r3, lbl_803C5640@l
/* 802885A4 002854E4  90 0D 8C 70 */	stw r0, lbl_804511F0-_SDA_BASE_(r13)
/* 802885A8 002854E8  38 1E 0B 30 */	addi r0, r30, 0xb30
/* 802885AC 002854EC  90 0D 8C 70 */	stw r0, lbl_804511F0-_SDA_BASE_(r13)
/* 802885B0 002854F0  38 6D 8C 70 */	addi r3, r13, lbl_804511F0-_SDA_BASE_
.global JStudio_NS_TVariableValue_NS_TOutput_none__NS_dtor
/* 802885B4 002854F4  3C 80 80 28 */	lis r4, JStudio_NS_TVariableValue_NS_TOutput_none__NS_dtor@ha
.global JStudio_NS_TVariableValue_NS_TOutput_none__NS_dtor
/* 802885B8 002854F8  38 84 5F 6C */	addi r4, r4, JStudio_NS_TVariableValue_NS_TOutput_none__NS_dtor@l
/* 802885BC 002854FC  38 BF 01 6C */	addi r5, r31, 0x16c
/* 802885C0 00285500  48 0D 96 65 */	bl func_80361C24
/* 802885C4 00285504  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802885C8 00285508  83 C1 00 08 */	lwz r30, 8(r1)
/* 802885CC 0028550C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802885D0 00285510  7C 08 03 A6 */	mtlr r0
/* 802885D4 00285514  38 21 00 10 */	addi r1, r1, 0x10
/* 802885D8 00285518  4E 80 00 20 */	blr 
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor
JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor:
/* 802885DC 0028551C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802885E0 00285520  7C 08 02 A6 */	mflr r0
/* 802885E4 00285524  90 01 00 14 */	stw r0, 0x14(r1)
/* 802885E8 00285528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802885EC 0028552C  93 C1 00 08 */	stw r30, 8(r1)
/* 802885F0 00285530  7C 7E 1B 79 */	or. r30, r3, r3
/* 802885F4 00285534  7C 9F 23 78 */	mr r31, r4
/* 802885F8 00285538  41 82 00 28 */	beq lbl_80288620
/* 802885FC 0028553C  3C 80 80 3C */	lis r4, lbl_803C5650@ha
/* 80288600 00285540  38 04 56 50 */	addi r0, r4, lbl_803C5650@l
/* 80288604 00285544  90 1E 00 00 */	stw r0, 0(r30)
/* 80288608 00285548  38 80 00 00 */	li r4, 0
/* 8028860C 0028554C  4B FF D8 01 */	bl JStudio_NS_TVariableValue_NS_TOutput_NS_dtor
/* 80288610 00285550  7F E0 07 35 */	extsh. r0, r31
/* 80288614 00285554  40 81 00 0C */	ble lbl_80288620
/* 80288618 00285558  7F C3 F3 78 */	mr r3, r30
/* 8028861C 0028555C  48 04 67 21 */	bl __dl__FPv
lbl_80288620:
/* 80288620 00285560  7F C3 F3 78 */	mr r3, r30
/* 80288624 00285564  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80288628 00285568  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028862C 0028556C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288630 00285570  7C 08 03 A6 */	mtlr r0
/* 80288634 00285574  38 21 00 10 */	addi r1, r1, 0x10
/* 80288638 00285578  4E 80 00 20 */	blr 
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_
JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X1_:
/* 8028863C 0028557C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288640 00285580  7C 08 02 A6 */	mflr r0
/* 80288644 00285584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288648 00285588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028864C 0028558C  93 C1 00 08 */	stw r30, 8(r1)
/* 80288650 00285590  7C 7E 1B 79 */	or. r30, r3, r3
/* 80288654 00285594  7C 9F 23 78 */	mr r31, r4
/* 80288658 00285598  41 82 00 28 */	beq lbl_80288680
/* 8028865C 0028559C  3C 80 80 3C */	lis r4, lbl_803C5660@ha
/* 80288660 002855A0  38 04 56 60 */	addi r0, r4, lbl_803C5660@l
/* 80288664 002855A4  90 1E 00 00 */	stw r0, 0(r30)
/* 80288668 002855A8  38 80 00 00 */	li r4, 0
/* 8028866C 002855AC  4B FF D7 A1 */	bl JStudio_NS_TVariableValue_NS_TOutput_NS_dtor
/* 80288670 002855B0  7F E0 07 35 */	extsh. r0, r31
/* 80288674 002855B4  40 81 00 0C */	ble lbl_80288680
/* 80288678 002855B8  7F C3 F3 78 */	mr r3, r30
/* 8028867C 002855BC  48 04 66 C1 */	bl __dl__FPv
lbl_80288680:
/* 80288680 002855C0  7F C3 F3 78 */	mr r3, r30
/* 80288684 002855C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80288688 002855C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028868C 002855CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288690 002855D0  7C 08 03 A6 */	mtlr r0
/* 80288694 002855D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80288698 002855D8  4E 80 00 20 */	blr 
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X2_
JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X2_:
/* 8028869C 002855DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802886A0 002855E0  7C 08 02 A6 */	mflr r0
/* 802886A4 002855E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802886A8 002855E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802886AC 002855EC  93 C1 00 08 */	stw r30, 8(r1)
/* 802886B0 002855F0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802886B4 002855F4  7C 9F 23 78 */	mr r31, r4
/* 802886B8 002855F8  41 82 00 28 */	beq lbl_802886E0
/* 802886BC 002855FC  3C 80 80 3C */	lis r4, lbl_803C5670@ha
/* 802886C0 00285600  38 04 56 70 */	addi r0, r4, lbl_803C5670@l
/* 802886C4 00285604  90 1E 00 00 */	stw r0, 0(r30)
/* 802886C8 00285608  38 80 00 00 */	li r4, 0
/* 802886CC 0028560C  4B FF D7 41 */	bl JStudio_NS_TVariableValue_NS_TOutput_NS_dtor
/* 802886D0 00285610  7F E0 07 35 */	extsh. r0, r31
/* 802886D4 00285614  40 81 00 0C */	ble lbl_802886E0
/* 802886D8 00285618  7F C3 F3 78 */	mr r3, r30
/* 802886DC 0028561C  48 04 66 61 */	bl __dl__FPv
lbl_802886E0:
/* 802886E0 00285620  7F C3 F3 78 */	mr r3, r30
/* 802886E4 00285624  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802886E8 00285628  83 C1 00 08 */	lwz r30, 8(r1)
/* 802886EC 0028562C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802886F0 00285630  7C 08 03 A6 */	mtlr r0
/* 802886F4 00285634  38 21 00 10 */	addi r1, r1, 0x10
/* 802886F8 00285638  4E 80 00 20 */	blr 
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_
JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X3_:
/* 802886FC 0028563C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288700 00285640  7C 08 02 A6 */	mflr r0
/* 80288704 00285644  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288708 00285648  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028870C 0028564C  93 C1 00 08 */	stw r30, 8(r1)
/* 80288710 00285650  7C 7E 1B 79 */	or. r30, r3, r3
/* 80288714 00285654  7C 9F 23 78 */	mr r31, r4
/* 80288718 00285658  41 82 00 28 */	beq lbl_80288740
/* 8028871C 0028565C  3C 80 80 3C */	lis r4, lbl_803C5680@ha
/* 80288720 00285660  38 04 56 80 */	addi r0, r4, lbl_803C5680@l
/* 80288724 00285664  90 1E 00 00 */	stw r0, 0(r30)
/* 80288728 00285668  38 80 00 00 */	li r4, 0
/* 8028872C 0028566C  4B FF D6 E1 */	bl JStudio_NS_TVariableValue_NS_TOutput_NS_dtor
/* 80288730 00285670  7F E0 07 35 */	extsh. r0, r31
/* 80288734 00285674  40 81 00 0C */	ble lbl_80288740
/* 80288738 00285678  7F C3 F3 78 */	mr r3, r30
/* 8028873C 0028567C  48 04 66 01 */	bl __dl__FPv
lbl_80288740:
/* 80288740 00285680  7F C3 F3 78 */	mr r3, r30
/* 80288744 00285684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80288748 00285688  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028874C 0028568C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288750 00285690  7C 08 03 A6 */	mtlr r0
/* 80288754 00285694  38 21 00 10 */	addi r1, r1, 0x10
/* 80288758 00285698  4E 80 00 20 */	blr 
.global JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_
JStudio_NS__unnamed_jstudio_object_cpp__NS_TOutputVariableValue_BOOL__NS_dtor_X4_:
/* 8028875C 0028569C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288760 002856A0  7C 08 02 A6 */	mflr r0
/* 80288764 002856A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288768 002856A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028876C 002856AC  93 C1 00 08 */	stw r30, 8(r1)
/* 80288770 002856B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80288774 002856B4  7C 9F 23 78 */	mr r31, r4
/* 80288778 002856B8  41 82 00 28 */	beq lbl_802887A0
/* 8028877C 002856BC  3C 80 80 3C */	lis r4, lbl_803C5690@ha
/* 80288780 002856C0  38 04 56 90 */	addi r0, r4, lbl_803C5690@l
/* 80288784 002856C4  90 1E 00 00 */	stw r0, 0(r30)
/* 80288788 002856C8  38 80 00 00 */	li r4, 0
/* 8028878C 002856CC  4B FF D6 81 */	bl JStudio_NS_TVariableValue_NS_TOutput_NS_dtor
/* 80288790 002856D0  7F E0 07 35 */	extsh. r0, r31
/* 80288794 002856D4  40 81 00 0C */	ble lbl_802887A0
/* 80288798 002856D8  7F C3 F3 78 */	mr r3, r30
/* 8028879C 002856DC  48 04 65 A1 */	bl __dl__FPv
lbl_802887A0:
/* 802887A0 002856E0  7F C3 F3 78 */	mr r3, r30
/* 802887A4 002856E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802887A8 002856E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802887AC 002856EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802887B0 002856F0  7C 08 03 A6 */	mtlr r0
/* 802887B4 002856F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802887B8 002856F8  4E 80 00 20 */	blr 
/* 802887BC 002856FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802887C0 00285700  7C 08 02 A6 */	mflr r0
/* 802887C4 00285704  90 01 00 14 */	stw r0, 0x14(r1)
/* 802887C8 00285708  7C 67 1B 78 */	mr r7, r3
/* 802887CC 0028570C  38 00 00 00 */	li r0, 0
/* 802887D0 00285710  90 01 00 08 */	stw r0, 8(r1)
/* 802887D4 00285714  C0 02 BA C8 */	lfs f0, lbl_804554C8-_SDA2_BASE_(r2)
/* 802887D8 00285718  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802887DC 0028571C  4C 41 13 82 */	cror 2, 1, 2
/* 802887E0 00285720  40 82 00 0C */	bne lbl_802887EC
/* 802887E4 00285724  38 00 00 01 */	li r0, 1
/* 802887E8 00285728  90 01 00 08 */	stw r0, 8(r1)
lbl_802887EC:
/* 802887EC 0028572C  7C 83 23 78 */	mr r3, r4
/* 802887F0 00285730  38 80 00 02 */	li r4, 2
/* 802887F4 00285734  38 A1 00 08 */	addi r5, r1, 8
/* 802887F8 00285738  38 C0 00 04 */	li r6, 4
/* 802887FC 0028573C  39 87 00 04 */	addi r12, r7, 4
/* 80288800 00285740  48 0D 98 85 */	bl func_80362084
/* 80288804 00285744  60 00 00 00 */	nop 
/* 80288808 00285748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028880C 0028574C  7C 08 03 A6 */	mtlr r0
/* 80288810 00285750  38 21 00 10 */	addi r1, r1, 0x10
/* 80288814 00285754  4E 80 00 20 */	blr 
/* 80288818 00285758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028881C 0028575C  7C 08 02 A6 */	mflr r0
/* 80288820 00285760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288824 00285764  7C 67 1B 78 */	mr r7, r3
/* 80288828 00285768  38 00 00 00 */	li r0, 0
/* 8028882C 0028576C  90 01 00 08 */	stw r0, 8(r1)
/* 80288830 00285770  C0 02 BA C8 */	lfs f0, lbl_804554C8-_SDA2_BASE_(r2)
/* 80288834 00285774  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80288838 00285778  4C 41 13 82 */	cror 2, 1, 2
/* 8028883C 0028577C  40 82 00 0C */	bne lbl_80288848
/* 80288840 00285780  38 00 00 01 */	li r0, 1
/* 80288844 00285784  90 01 00 08 */	stw r0, 8(r1)
lbl_80288848:
/* 80288848 00285788  7C 83 23 78 */	mr r3, r4
/* 8028884C 0028578C  38 80 00 02 */	li r4, 2
/* 80288850 00285790  38 A1 00 08 */	addi r5, r1, 8
/* 80288854 00285794  38 C0 00 04 */	li r6, 4
/* 80288858 00285798  39 87 00 04 */	addi r12, r7, 4
/* 8028885C 0028579C  48 0D 98 29 */	bl func_80362084
/* 80288860 002857A0  60 00 00 00 */	nop 
/* 80288864 002857A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288868 002857A8  7C 08 03 A6 */	mtlr r0
/* 8028886C 002857AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80288870 002857B0  4E 80 00 20 */	blr 
/* 80288874 002857B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288878 002857B8  7C 08 02 A6 */	mflr r0
/* 8028887C 002857BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288880 002857C0  7C 67 1B 78 */	mr r7, r3
/* 80288884 002857C4  38 00 00 00 */	li r0, 0
/* 80288888 002857C8  90 01 00 08 */	stw r0, 8(r1)
/* 8028888C 002857CC  C0 02 BA C8 */	lfs f0, lbl_804554C8-_SDA2_BASE_(r2)
/* 80288890 002857D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80288894 002857D4  4C 41 13 82 */	cror 2, 1, 2
/* 80288898 002857D8  40 82 00 0C */	bne lbl_802888A4
/* 8028889C 002857DC  38 00 00 01 */	li r0, 1
/* 802888A0 002857E0  90 01 00 08 */	stw r0, 8(r1)
lbl_802888A4:
/* 802888A4 002857E4  7C 83 23 78 */	mr r3, r4
/* 802888A8 002857E8  38 80 00 02 */	li r4, 2
/* 802888AC 002857EC  38 A1 00 08 */	addi r5, r1, 8
/* 802888B0 002857F0  38 C0 00 04 */	li r6, 4
/* 802888B4 002857F4  39 87 00 04 */	addi r12, r7, 4
/* 802888B8 002857F8  48 0D 97 CD */	bl func_80362084
/* 802888BC 002857FC  60 00 00 00 */	nop 
/* 802888C0 00285800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802888C4 00285804  7C 08 03 A6 */	mtlr r0
/* 802888C8 00285808  38 21 00 10 */	addi r1, r1, 0x10
/* 802888CC 0028580C  4E 80 00 20 */	blr 
/* 802888D0 00285810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802888D4 00285814  7C 08 02 A6 */	mflr r0
/* 802888D8 00285818  90 01 00 14 */	stw r0, 0x14(r1)
/* 802888DC 0028581C  7C 67 1B 78 */	mr r7, r3
/* 802888E0 00285820  38 00 00 00 */	li r0, 0
/* 802888E4 00285824  90 01 00 08 */	stw r0, 8(r1)
/* 802888E8 00285828  C0 02 BA C8 */	lfs f0, lbl_804554C8-_SDA2_BASE_(r2)
/* 802888EC 0028582C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802888F0 00285830  4C 41 13 82 */	cror 2, 1, 2
/* 802888F4 00285834  40 82 00 0C */	bne lbl_80288900
/* 802888F8 00285838  38 00 00 01 */	li r0, 1
/* 802888FC 0028583C  90 01 00 08 */	stw r0, 8(r1)
lbl_80288900:
/* 80288900 00285840  7C 83 23 78 */	mr r3, r4
/* 80288904 00285844  38 80 00 02 */	li r4, 2
/* 80288908 00285848  38 A1 00 08 */	addi r5, r1, 8
/* 8028890C 0028584C  38 C0 00 04 */	li r6, 4
/* 80288910 00285850  39 87 00 04 */	addi r12, r7, 4
/* 80288914 00285854  48 0D 97 71 */	bl func_80362084
/* 80288918 00285858  60 00 00 00 */	nop 
/* 8028891C 0028585C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80288920 00285860  7C 08 03 A6 */	mtlr r0
/* 80288924 00285864  38 21 00 10 */	addi r1, r1, 0x10
/* 80288928 00285868  4E 80 00 20 */	blr 
/* 8028892C 0028586C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80288930 00285870  7C 08 02 A6 */	mflr r0
/* 80288934 00285874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80288938 00285878  7C 67 1B 78 */	mr r7, r3
/* 8028893C 0028587C  38 00 00 00 */	li r0, 0
/* 80288940 00285880  90 01 00 08 */	stw r0, 8(r1)
/* 80288944 00285884  C0 02 BA C8 */	lfs f0, lbl_804554C8-_SDA2_BASE_(r2)
/* 80288948 00285888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8028894C 0028588C  4C 41 13 82 */	cror 2, 1, 2
/* 80288950 00285890  40 82 00 0C */	bne lbl_8028895C
/* 80288954 00285894  38 00 00 01 */	li r0, 1
/* 80288958 00285898  90 01 00 08 */	stw r0, 8(r1)
lbl_8028895C:
/* 8028895C 0028589C  7C 83 23 78 */	mr r3, r4
/* 80288960 002858A0  38 80 00 02 */	li r4, 2
/* 80288964 002858A4  38 A1 00 08 */	addi r5, r1, 8
/* 80288968 002858A8  38 C0 00 04 */	li r6, 4
/* 8028896C 002858AC  39 87 00 04 */	addi r12, r7, 4
/* 80288970 002858B0  48 0D 97 15 */	bl func_80362084
/* 80288974 002858B4  60 00 00 00 */	nop 
/* 80288978 002858B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028897C 002858BC  7C 08 03 A6 */	mtlr r0
/* 80288980 002858C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80288984 002858C4  4E 80 00 20 */	blr 


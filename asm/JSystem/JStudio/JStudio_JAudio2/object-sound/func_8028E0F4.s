lbl_8028E0F4:
/* 8028E0F4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8028E0F8  7C 08 02 A6 */	mflr r0
/* 8028E0FC  90 01 00 64 */	stw r0, 0x64(r1)
/* 8028E100  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8028E104  3C 60 80 43 */	lis r3, 0x80431490@ha /* 0x80431490@ha */
/* 8028E108  3B E3 14 90 */	addi r31, r3, 0x80431490@l /* 0x80431490@l */
/* 8028E10C  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028E110  38 C3 56 40 */	addi r6, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028E114  90 C1 00 44 */	stw r6, 0x44(r1)
/* 8028E118  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E11C  38 A3 5A 78 */	addi r5, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E120  90 A1 00 44 */	stw r5, 0x44(r1)
/* 8028E124  38 80 00 07 */	li r4, 7
/* 8028E128  90 81 00 48 */	stw r4, 0x48(r1)
/* 8028E12C  3C 60 80 29 */	lis r3, setValue_VOLUME_@ha /* 0x8028D728@ha */
/* 8028E130  38 03 D7 28 */	addi r0, r3, setValue_VOLUME_@l /* 0x8028D728@l */
/* 8028E134  90 01 00 4C */	stw r0, 0x4c(r1)
/* 8028E138  90 DF 00 68 */	stw r6, 0x68(r31)
/* 8028E13C  90 BF 00 68 */	stw r5, 0x68(r31)
/* 8028E140  38 7F 00 68 */	addi r3, r31, 0x68
/* 8028E144  90 83 00 04 */	stw r4, 4(r3)
/* 8028E148  90 03 00 08 */	stw r0, 8(r3)
/* 8028E14C  3C 80 80 29 */	lis r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@ha /* 0x8028E094@ha */
/* 8028E150  38 84 E0 94 */	addi r4, r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@l /* 0x8028E094@l */
/* 8028E154  38 BF 00 20 */	addi r5, r31, 0x20
/* 8028E158  48 0D 3A CD */	bl __register_global_object
/* 8028E15C  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E160  38 03 5A 78 */	addi r0, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E164  90 01 00 44 */	stw r0, 0x44(r1)
/* 8028E168  38 61 00 44 */	addi r3, r1, 0x44
/* 8028E16C  38 80 00 00 */	li r4, 0
/* 8028E170  4B FF 7C 9D */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028E174  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028E178  38 C3 56 40 */	addi r6, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028E17C  90 C1 00 38 */	stw r6, 0x38(r1)
/* 8028E180  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E184  38 A3 5A 78 */	addi r5, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E188  90 A1 00 38 */	stw r5, 0x38(r1)
/* 8028E18C  38 80 00 08 */	li r4, 8
/* 8028E190  90 81 00 3C */	stw r4, 0x3c(r1)
/* 8028E194  3C 60 80 29 */	lis r3, setValue_PAN_@ha /* 0x8028D750@ha */
/* 8028E198  38 03 D7 50 */	addi r0, r3, setValue_PAN_@l /* 0x8028D750@l */
/* 8028E19C  90 01 00 40 */	stw r0, 0x40(r1)
/* 8028E1A0  38 7F 00 68 */	addi r3, r31, 0x68
/* 8028E1A4  90 C3 00 0C */	stw r6, 0xc(r3)
/* 8028E1A8  90 A3 00 0C */	stw r5, 0xc(r3)
/* 8028E1AC  90 83 00 10 */	stw r4, 0x10(r3)
/* 8028E1B0  90 03 00 14 */	stw r0, 0x14(r3)
/* 8028E1B4  38 63 00 0C */	addi r3, r3, 0xc
/* 8028E1B8  3C 80 80 29 */	lis r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@ha /* 0x8028E094@ha */
/* 8028E1BC  38 84 E0 94 */	addi r4, r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@l /* 0x8028E094@l */
/* 8028E1C0  38 BF 00 2C */	addi r5, r31, 0x2c
/* 8028E1C4  48 0D 3A 61 */	bl __register_global_object
/* 8028E1C8  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E1CC  38 03 5A 78 */	addi r0, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E1D0  90 01 00 38 */	stw r0, 0x38(r1)
/* 8028E1D4  38 61 00 38 */	addi r3, r1, 0x38
/* 8028E1D8  38 80 00 00 */	li r4, 0
/* 8028E1DC  4B FF 7C 31 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028E1E0  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028E1E4  38 C3 56 40 */	addi r6, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028E1E8  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 8028E1EC  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E1F0  38 A3 5A 78 */	addi r5, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E1F4  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 8028E1F8  38 80 00 09 */	li r4, 9
/* 8028E1FC  90 81 00 30 */	stw r4, 0x30(r1)
/* 8028E200  3C 60 80 29 */	lis r3, setValue_PITCH_@ha /* 0x8028D778@ha */
/* 8028E204  38 03 D7 78 */	addi r0, r3, setValue_PITCH_@l /* 0x8028D778@l */
/* 8028E208  90 01 00 34 */	stw r0, 0x34(r1)
/* 8028E20C  38 7F 00 68 */	addi r3, r31, 0x68
/* 8028E210  90 C3 00 18 */	stw r6, 0x18(r3)
/* 8028E214  90 A3 00 18 */	stw r5, 0x18(r3)
/* 8028E218  90 83 00 1C */	stw r4, 0x1c(r3)
/* 8028E21C  90 03 00 20 */	stw r0, 0x20(r3)
/* 8028E220  38 63 00 18 */	addi r3, r3, 0x18
/* 8028E224  3C 80 80 29 */	lis r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@ha /* 0x8028E094@ha */
/* 8028E228  38 84 E0 94 */	addi r4, r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@l /* 0x8028E094@l */
/* 8028E22C  38 BF 00 38 */	addi r5, r31, 0x38
/* 8028E230  48 0D 39 F5 */	bl __register_global_object
/* 8028E234  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E238  38 03 5A 78 */	addi r0, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E23C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8028E240  38 61 00 2C */	addi r3, r1, 0x2c
/* 8028E244  38 80 00 00 */	li r4, 0
/* 8028E248  4B FF 7B C5 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028E24C  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028E250  38 C3 56 40 */	addi r6, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028E254  90 C1 00 20 */	stw r6, 0x20(r1)
/* 8028E258  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E25C  38 A3 5A 78 */	addi r5, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E260  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8028E264  38 80 00 0A */	li r4, 0xa
/* 8028E268  90 81 00 24 */	stw r4, 0x24(r1)
/* 8028E26C  3C 60 80 29 */	lis r3, setValue_TEMPO_@ha /* 0x8028D7A0@ha */
/* 8028E270  38 03 D7 A0 */	addi r0, r3, setValue_TEMPO_@l /* 0x8028D7A0@l */
/* 8028E274  90 01 00 28 */	stw r0, 0x28(r1)
/* 8028E278  38 7F 00 68 */	addi r3, r31, 0x68
/* 8028E27C  90 C3 00 24 */	stw r6, 0x24(r3)
/* 8028E280  90 A3 00 24 */	stw r5, 0x24(r3)
/* 8028E284  90 83 00 28 */	stw r4, 0x28(r3)
/* 8028E288  90 03 00 2C */	stw r0, 0x2c(r3)
/* 8028E28C  38 63 00 24 */	addi r3, r3, 0x24
/* 8028E290  3C 80 80 29 */	lis r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@ha /* 0x8028E094@ha */
/* 8028E294  38 84 E0 94 */	addi r4, r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@l /* 0x8028E094@l */
/* 8028E298  38 BF 00 44 */	addi r5, r31, 0x44
/* 8028E29C  48 0D 39 89 */	bl __register_global_object
/* 8028E2A0  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E2A4  38 03 5A 78 */	addi r0, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E2A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8028E2AC  38 61 00 20 */	addi r3, r1, 0x20
/* 8028E2B0  38 80 00 00 */	li r4, 0
/* 8028E2B4  4B FF 7B 59 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028E2B8  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028E2BC  38 C3 56 40 */	addi r6, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028E2C0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 8028E2C4  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E2C8  38 A3 5A 78 */	addi r5, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E2CC  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8028E2D0  38 80 00 0B */	li r4, 0xb
/* 8028E2D4  90 81 00 18 */	stw r4, 0x18(r1)
/* 8028E2D8  3C 60 80 29 */	lis r3, setValue_ECHO_@ha /* 0x8028D800@ha */
/* 8028E2DC  38 03 D8 00 */	addi r0, r3, setValue_ECHO_@l /* 0x8028D800@l */
/* 8028E2E0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8028E2E4  38 7F 00 68 */	addi r3, r31, 0x68
/* 8028E2E8  90 C3 00 30 */	stw r6, 0x30(r3)
/* 8028E2EC  90 A3 00 30 */	stw r5, 0x30(r3)
/* 8028E2F0  90 83 00 34 */	stw r4, 0x34(r3)
/* 8028E2F4  90 03 00 38 */	stw r0, 0x38(r3)
/* 8028E2F8  38 63 00 30 */	addi r3, r3, 0x30
/* 8028E2FC  3C 80 80 29 */	lis r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@ha /* 0x8028E094@ha */
/* 8028E300  38 84 E0 94 */	addi r4, r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@l /* 0x8028E094@l */
/* 8028E304  38 BF 00 50 */	addi r5, r31, 0x50
/* 8028E308  48 0D 39 1D */	bl __register_global_object
/* 8028E30C  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E310  38 03 5A 78 */	addi r0, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E314  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E318  38 61 00 14 */	addi r3, r1, 0x14
/* 8028E31C  38 80 00 00 */	li r4, 0
/* 8028E320  4B FF 7A ED */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028E324  3C 60 80 3C */	lis r3, __vt__Q37JStudio14TVariableValue7TOutput@ha /* 0x803C5640@ha */
/* 8028E328  38 C3 56 40 */	addi r6, r3, __vt__Q37JStudio14TVariableValue7TOutput@l /* 0x803C5640@l */
/* 8028E32C  90 C1 00 08 */	stw r6, 8(r1)
/* 8028E330  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E334  38 A3 5A 78 */	addi r5, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E338  90 A1 00 08 */	stw r5, 8(r1)
/* 8028E33C  38 80 FF FF */	li r4, -1
/* 8028E340  90 81 00 0C */	stw r4, 0xc(r1)
/* 8028E344  38 00 00 00 */	li r0, 0
/* 8028E348  90 01 00 10 */	stw r0, 0x10(r1)
/* 8028E34C  38 7F 00 68 */	addi r3, r31, 0x68
/* 8028E350  90 C3 00 3C */	stw r6, 0x3c(r3)
/* 8028E354  90 A3 00 3C */	stw r5, 0x3c(r3)
/* 8028E358  90 83 00 40 */	stw r4, 0x40(r3)
/* 8028E35C  90 03 00 44 */	stw r0, 0x44(r3)
/* 8028E360  38 63 00 3C */	addi r3, r3, 0x3c
/* 8028E364  3C 80 80 29 */	lis r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@ha /* 0x8028E094@ha */
/* 8028E368  38 84 E0 94 */	addi r4, r4, __dt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_Fv@l /* 0x8028E094@l */
/* 8028E36C  38 BF 00 5C */	addi r5, r31, 0x5c
/* 8028E370  48 0D 38 B5 */	bl __register_global_object
/* 8028E374  3C 60 80 3C */	lis r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha /* 0x803C5A78@ha */
/* 8028E378  38 03 5A 78 */	addi r0, r3, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l /* 0x803C5A78@l */
/* 8028E37C  90 01 00 08 */	stw r0, 8(r1)
/* 8028E380  38 61 00 08 */	addi r3, r1, 8
/* 8028E384  38 80 00 00 */	li r4, 0
/* 8028E388  4B FF 7A 85 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028E38C  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8028E390  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8028E394  7C 08 03 A6 */	mtlr r0
/* 8028E398  38 21 00 60 */	addi r1, r1, 0x60
/* 8028E39C  4E 80 00 20 */	blr 
